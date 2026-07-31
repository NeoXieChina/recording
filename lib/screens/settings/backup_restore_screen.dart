import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/providers/settings_provider.dart';

class BackupRestoreScreen extends StatefulWidget {
  const BackupRestoreScreen({super.key});

  @override
  State<BackupRestoreScreen> createState() => _BackupRestoreScreenState();
}

class _BackupRestoreScreenState extends State<BackupRestoreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isExporting = false;
  bool _isImporting = false;
  String? _selectedBackupFilePath;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _backupAllData() async {
    final currentContext = context;
    setState(() {
      _isExporting = true;
    });

    try {
      final backupService = BackupService();
      final bytes = await backupService.exportBackupToBytes();

      if (!currentContext.mounted) return;

      final savePath = await FilePicker.saveFile(
        dialogTitle: '备份全部数据',
        fileName:
            'backup_${DateTime.now().toIso8601String().replaceAll(':', '-').replaceAll('.', '-')}.zip',
        allowedExtensions: ['zip'],
        type: FileType.custom,
        bytes: bytes,
      );

      if (savePath == null) {
        if (!currentContext.mounted) return;
        setState(() {
          _isExporting = false;
        });
        return;
      }

      // 将字节写入文件
      final file = File(savePath);
      await file.writeAsBytes(bytes);

      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('备份成功：$savePath')));
    } catch (e) {
      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('备份失败：$e')));
    }
  }

  Future<void> _selectBackupFile() async {
    final currentContext = context;
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['zip', 'itembackup'],
    );

    if (result == null || result.files.isEmpty) return;

    final filePath = result.files.single.path;
    if (filePath == null) return;

    if (!currentContext.mounted) return;
    setState(() {
      _selectedBackupFilePath = filePath;
    });
  }

  Future<void> _restoreBackup() async {
    final currentContext = context;
    final provider = currentContext.read<SettingsProvider>();

    if (_selectedBackupFilePath == null) {
      if (!currentContext.mounted) return;
      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(const SnackBar(content: Text('请先选择备份文件')));
      return;
    }

    // 第一次确认
    if (!currentContext.mounted) return;
    final confirm1 = await showDialog<bool>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: const Text('确认恢复'),
        content: const Text('恢复备份将清空所有现有数据并替换为备份数据，此操作不可撤销。确定要继续吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('确定'),
          ),
        ],
      ),
    );

    if (!currentContext.mounted) return;
    if (confirm1 != true) return;

    // 第二次确认
    if (!currentContext.mounted) return;
    final confirm2 = await showDialog<bool>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: const Text('再次确认'),
        content: const Text('您确定要清空所有现有数据并恢复备份吗？此操作将无法恢复！'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('确定恢复'),
          ),
        ],
      ),
    );

    if (!currentContext.mounted) return;
    if (confirm2 != true) return;

    setState(() {
      _isImporting = true;
    });

    try {
      provider.setImporting(true, progress: 0.0);
      final backupService = BackupService();
      final count = await backupService.importBackup(_selectedBackupFilePath!);
      provider.setImporting(false);

      if (!currentContext.mounted) return;

      setState(() {
        _isImporting = false;
        _selectedBackupFilePath = null;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('恢复成功，共$count条物品')));
    } catch (e) {
      if (!currentContext.mounted) return;

      provider.setImporting(false);
      setState(() {
        _isImporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('恢复失败：$e')));
    }
  }

  Widget _buildBackupTab(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.backup,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                '备份全部数据',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '将全部数据（包括图片）打包为ZIP文件备份',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: _isExporting ? null : _backupAllData,
              icon: _isExporting
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    )
                  : const Icon(Icons.backup),
              label: Text(_isExporting ? '备份中...' : '备份全部数据'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRestoreTab(BuildContext context) {
    final provider = context.watch<SettingsProvider>();
    
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.restore,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                '恢复备份',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '从ZIP备份文件恢复全部数据（包括图片）',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          if (_selectedBackupFilePath != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                '已选择文件：${_selectedBackupFilePath!.split('/').last}',
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _selectBackupFile,
                  icon: const Icon(Icons.folder_open),
                  label: const Text('选择备份文件'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton.icon(
                  onPressed:
                      provider.isImporting ||
                          _isImporting ||
                          _selectedBackupFilePath == null
                      ? null
                      : _restoreBackup,
                  icon: provider.isImporting || _isImporting
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                      : const Icon(Icons.restore),
                  label: Text(
                    provider.isImporting || _isImporting
                        ? '恢复中...'
                        : '恢复备份',
                  ),
                ),
              ),
            ],
          ),
          if (provider.isImporting) ...[
            const SizedBox(height: 12),
            LinearProgressIndicator(value: provider.importProgress),
          ],
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('备份与恢复'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.backup), text: '备份'),
              Tab(icon: Icon(Icons.restore), text: '恢复'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // 备份标签页
            _buildBackupTab(context),
            
            // 恢复标签页
            _buildRestoreTab(context),
          ],
        ),
      ),
    );
  }
}
