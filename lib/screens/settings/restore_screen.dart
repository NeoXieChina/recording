import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/providers/settings_provider.dart';

class RestoreScreen extends StatefulWidget {
  const RestoreScreen({super.key});

  @override
  State<RestoreScreen> createState() => _RestoreScreenState();
}

class _RestoreScreenState extends State<RestoreScreen> {
  bool _isImporting = false;
  String? _selectedBackupFilePath;

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

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SettingsProvider>();
    final theme = Theme.of(context);
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              '恢复数据',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: false,
            elevation: 0,
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
                '从ZIP备份文件恢复全部数据（包括图片）',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface.withAlpha((0.8 * 255).round()),
                ),
              ),
                  const SizedBox(height: 24),
                  if (_selectedBackupFilePath != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        '已选择文件：${_selectedBackupFilePath!.split('/').last}',
                         style: theme.textTheme.bodyMedium?.copyWith(
                           color: theme.colorScheme.onSurface.withAlpha((0.8 * 255).round()),
                         ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: _selectBackupFile,
                           style: OutlinedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            '选择备份文件',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed:
                              provider.isImporting ||
                                  _isImporting ||
                                  _selectedBackupFilePath == null
                              ? null
                              : _restoreBackup,
                           style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: provider.isImporting || _isImporting
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                  ),
                                )
                              : const Text(
                                  '恢复备份',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  if (provider.isImporting) ...[
                    const SizedBox(height: 16),
                    LinearProgressIndicator(value: provider.importProgress),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}