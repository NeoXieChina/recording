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

      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-').replaceAll('.', '-');
      final defaultFileName = 'backup_$timestamp.zip';
      
      // 直接使用FilePicker保存文件，它会处理Android SAF URI
      final savePath = await FilePicker.saveFile(
        dialogTitle: '备份全部数据',
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

      // 提取文件名，处理不同平台的路径格式
      final fileName = _extractFileName(savePath, defaultFileName);
      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('备份成功：$fileName')));
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

  /// 从路径或URI中提取文件名
  String _extractFileName(String path, String defaultName) {
    // 处理content:// URI
    if (path.startsWith('content://')) {
      // 尝试从content URI中提取文件名
      final uri = Uri.parse(path);
      final segments = uri.pathSegments;
      if (segments.isNotEmpty) {
        // 查找最后一个非空的段作为文件名
        for (int i = segments.length - 1; i >= 0; i--) {
          final segment = segments[i];
          if (segment.isNotEmpty) {
            // 检查是否有查询参数
            final queryIndex = segment.indexOf('?');
            if (queryIndex > 0) {
              return segment.substring(0, queryIndex);
            }
            return segment;
          }
        }
      }
      return defaultName;
    }
    
    // 处理file:// URI
    if (path.startsWith('file://')) {
      final uri = Uri.parse(path);
      final fileName = uri.pathSegments.lastOrNull;
      return fileName ?? defaultName;
    }
    
    // 处理普通文件路径
    final pathSeparator = path.contains('\\') ? '\\' : '/';
    final parts = path.split(pathSeparator);
    for (int i = parts.length - 1; i >= 0; i--) {
      final part = parts[i];
      if (part.isNotEmpty && part != '.' && part != '..') {
        // 移除查询参数或片段标识符
        final cleanName = part.split('?')[0].split('#')[0];
        return cleanName;
      }
    }
    
    return defaultName;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('备份数据', style: theme.textTheme.titleLarge),
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
                         backgroundColor: _isExporting 
                             ? theme.colorScheme.onSurface.withAlpha(31)  // 0.12 opacity
                             : theme.colorScheme.primary,
                         foregroundColor: _isExporting 
                             ? theme.colorScheme.onSurface.withAlpha(97)  // 0.38 opacity
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
                              '备份全部数据',
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
