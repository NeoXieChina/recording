import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recording/data/datasources/data_export_service.dart';

class ImportScreen extends StatefulWidget {
  const ImportScreen({super.key});

  @override
  State<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  ExportFormat? _selectedImportFormat;
  bool _isImporting = false;
  double _importProgress = 0.0;
  String? _importFilePath;

  Future<DuplicateAction?> _showDuplicateActionDialog() async {
    final currentContext = context;
    if (!currentContext.mounted) return null;

    return await showDialog<DuplicateAction>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: const Text('重复数据处理'),
        content: const Text('检测到重复数据，请选择处理方式：'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.skip),
            child: const Text('跳过'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.overwrite),
            child: const Text('覆盖'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.skipAll),
            child: const Text('全部跳过'),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pop(context, DuplicateAction.overwriteAll),
            child: const Text('全部覆盖'),
          ),
        ],
      ),
    );
  }

  Future<void> _importData() async {
    final currentContext = context;
    if (_selectedImportFormat == null) {
      if (!currentContext.mounted) return;
      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(const SnackBar(content: Text('请选择导入格式')));
      return;
    }

    if (_importFilePath == null) {
      final result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: [_getFileExtension(_selectedImportFormat!)],
      );

      if (result == null || result.files.isEmpty) return;

      if (!currentContext.mounted) return;
      setState(() {
        _importFilePath = result.files.single.path;
      });
    }

    if (_importFilePath == null) return;

    // 二次确认对话框
    if (!currentContext.mounted) return;
    final confirm = await showDialog<bool>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: const Text('确认导入'),
        content: const Text('导入数据将覆盖现有数据，此操作不可撤销。确定要继续吗？'),
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
    if (confirm != true) return;

    // 询问重复数据处理方式
    final duplicateAction = await _showDuplicateActionDialog();
    if (duplicateAction == null) return;

    setState(() {
      _isImporting = true;
      _importProgress = 0.0;
    });

    try {
      final service = DataExportService();
      final importedCount = await service.importData(
        _importFilePath!,
        _selectedImportFormat!,
        duplicateAction: duplicateAction,
      );

      if (!currentContext.mounted) return;

      setState(() {
        _isImporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('数据导入成功，共导入$importedCount条物品')));
      setState(() {
        _importFilePath = null;
      });
    } catch (e) {
      if (!currentContext.mounted) return;

      setState(() {
        _isImporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('导入失败：$e')));
    }
  }

  String _getFileExtension(ExportFormat format) {
    switch (format) {
      case ExportFormat.csv:
        return 'csv';
      case ExportFormat.txt:
        return 'txt';
      case ExportFormat.sql:
        return 'sql';
    }
  }

  String _getFormatName(ExportFormat format) {
    switch (format) {
      case ExportFormat.csv:
        return 'CSV';
      case ExportFormat.txt:
        return 'TXT';
      case ExportFormat.sql:
        return 'SQL';
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
              '导入数据',
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
                  SegmentedButton<ExportFormat>(
                    style: SegmentedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    segments: ExportFormat.values
                        .map(
                          (format) => ButtonSegment<ExportFormat>(
                            value: format,
                            label: Text(_getFormatName(format)),
                          ),
                        )
                        .toList(),
                    selected: _selectedImportFormat != null
                        ? {_selectedImportFormat!}
                        : <ExportFormat>{},
                    emptySelectionAllowed: true,
                    onSelectionChanged: (Set<ExportFormat> newSelection) {
                      setState(() {
                        _selectedImportFormat = newSelection.isNotEmpty
                            ? newSelection.first
                            : null;
                        _importFilePath = null;
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  if (_importFilePath != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        '已选择文件：${_importFilePath!.split('/').last}',
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
                          onPressed: () async {
                            if (_selectedImportFormat == null) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('请先选择导入格式')),
                                );
                              }
                              return;
                            }

                            final result = await FilePicker.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: [
                                _getFileExtension(_selectedImportFormat!),
                              ],
                            );

                            if (result != null && result.files.isNotEmpty) {
                              setState(() {
                                _importFilePath = result.files.single.path;
                              });
                            }
                          },
                           style: OutlinedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            '选择文件',
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
                          onPressed: _isImporting || _importFilePath == null
                              ? null
                              : _importData,
                           style: ElevatedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: _isImporting
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                  ),
                                )
                              : const Text(
                                  '导入数据',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  if (_isImporting) ...[
                    const SizedBox(height: 16),
                    LinearProgressIndicator(value: _importProgress),
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