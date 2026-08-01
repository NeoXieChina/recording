import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/generated/l10n/app_localizations.dart';

class BackupScreen extends StatefulWidget {
  const BackupScreen({super.key});

  @override
  State<BackupScreen> createState() => _BackupScreenState();
}

class _BackupScreenState extends State<BackupScreen> {
  bool _isExporting = false;

  Future<void> _backupAllData() async {
    final currentContext = context;
    final l10n = AppLocalizations.of(currentContext);
    setState(() {
      _isExporting = true;
    });

    try {
      final backupService = BackupService();
      final bytes = await backupService.exportBackupToBytes();

      if (!currentContext.mounted) return;

      final timestamp = DateTime.now()
          .toIso8601String()
          .replaceAll(':', '-')
          .replaceAll('.', '-');
      final defaultFileName = 'backup_$timestamp.zip';

      // 直接使用FilePicker保存文件，它会处理Android SAF URI
      final savePath = await FilePicker.saveFile(
        dialogTitle: l10n.backup_all_data,
        fileName: defaultFileName,
        allowedExtensions: ['zip'],
        type: FileType.custom,
        bytes: bytes, // FilePicker会处理文件保存
      );

      if (savePath == null) {
        if (!currentContext.mounted) return;
        setState(() {
          _isExporting = false;
        });
        return;
      }

      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text(l10n.backup_success)));
    } catch (e) {
      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text(l10n.backup_failed(e.toString()))));
    }
  }

  /// 从路径或URI中提取文件名

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.backup_data),
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
                    l10n.backup_data_description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface.withAlpha(
                        (0.8 * 255).round(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _isExporting ? null : _backupAllData,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isExporting
                            ? theme.colorScheme.onSurface.withAlpha(
                                31,
                              ) // 0.12 opacity
                            : theme.colorScheme.primary,
                        foregroundColor: _isExporting
                            ? theme.colorScheme.onSurface.withAlpha(
                                97,
                              ) // 0.38 opacity
                            : theme.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: _isExporting
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(strokeWidth: 3),
                            )
                          : Text(
                              l10n.backup_all_data,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
