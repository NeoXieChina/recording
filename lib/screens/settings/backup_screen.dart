import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recording/data/datasources/backup_service.dart';

class BackupScreen extends StatefulWidget {
  const BackupScreen({super.key});

  @override
  State<BackupScreen> createState() => _BackupScreenState();
}

class _BackupScreenState extends State<BackupScreen> {
  bool _isExporting = false;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar.large(
             title: Text(
               '备份数据',
                 style: theme.textTheme.titleLarge,
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
                    '将全部数据（包括图片）打包为ZIP文件备份',
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
                          : const Text(
                              '备份全部数据',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
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
