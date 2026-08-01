import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
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
      withData: true, // 始终获取文件字节数据
    );

    if (result == null || result.files.isEmpty) return;

    final file = result.files.single;
    if (file.bytes == null) return;

    // 将字节写入临时文件（避免SAF URI路径问题）
    final tempDir = await getTemporaryDirectory();
    final tempFile = File(
      '${tempDir.path}/backup_${DateTime.now().millisecondsSinceEpoch}.zip',
    );
    await tempFile.writeAsBytes(file.bytes!);

    if (!currentContext.mounted) return;
    setState(() {
      _selectedBackupFilePath = tempFile.path;
    });
  }

  Future<void> _restoreBackup() async {
    final currentContext = context;
    final l10n = AppLocalizations.of(currentContext);
    final provider = currentContext.read<SettingsProvider>();

    if (_selectedBackupFilePath == null) {
      if (!currentContext.mounted) return;
      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text(l10n.select_backup_file_first)));
      return;
    }

    // 第一次确认
    if (!currentContext.mounted) return;
    final confirm1 = await showDialog<bool>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: Text(l10n.confirm_restore),
        content: Text(l10n.confirm_restore_message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.confirm),
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
        title: Text(l10n.confirm_again),
        content: Text(l10n.confirm_restore_warning),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(l10n.confirm_restore_button),
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
      ).showSnackBar(SnackBar(content: Text(l10n.restore_success(count))));
    } catch (e) {
      if (!currentContext.mounted) return;

      provider.setImporting(false);
      setState(() {
        _isImporting = false;
      });

      ScaffoldMessenger.of(currentContext).showSnackBar(
        SnackBar(content: Text(l10n.restore_failed(e.toString()))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final provider = context.watch<SettingsProvider>();
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.restore_data),
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
                    l10n.restore_data_description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface.withAlpha(
                        (0.8 * 255).round(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  if (_selectedBackupFilePath != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        l10n.selected_file(
                          p.basename(_selectedBackupFilePath!),
                        ),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withAlpha(
                            (0.8 * 255).round(),
                          ),
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
                          child: Text(
                            l10n.select_backup_file,
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
                              : Text(
                                  l10n.restore_backup,
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
