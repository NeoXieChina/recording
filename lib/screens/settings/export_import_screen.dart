import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recording/data/datasources/data_export_service.dart';

class ExportImportScreen extends StatefulWidget {
  final String? initialTab;
  
  const ExportImportScreen({super.key, this.initialTab});

  static Route<void> route({String? initialTab}) {
    return MaterialPageRoute(
      builder: (context) => ExportImportScreen(initialTab: initialTab),
    );
  }

  @override
  State<ExportImportScreen> createState() => _ExportImportScreenState();
}

class _ExportImportScreenState extends State<ExportImportScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ExportFormat _selectedExportFormat = ExportFormat.csv;
  ExportFormat? _selectedImportFormat;
  bool _isExporting = false;
  bool _isImporting = false;
  double _importProgress = 0.0;
  String? _importFilePath;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    
    // 根据传入的参数设置初始标签页
    if (widget.initialTab == 'import') {
      _tabController.index = 1;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _exportData() async {
    final currentContext = context;
    setState(() {
      _isExporting = true;
    });

    try {
      final service = DataExportService();
      final bytes = await service.exportDataToBytes(_selectedExportFormat);

      if (!currentContext.mounted) return;

      final fileExtension = _getFileExtension(_selectedExportFormat);
      final savePath = await FilePicker.saveFile(
        dialogTitle: '导出数据',
        fileName:
            'export_${DateTime.now().toIso8601String().replaceAll(':', '-').replaceAll('.', '-')}.$fileExtension',
        allowedExtensions: [fileExtension],
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

      final file = File(savePath);
      await file.writeAsBytes(bytes);

      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('数据导出成功：$savePath')));
    } catch (e) {
      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text('导出失败：$e')));
    }
  }

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
    return DefaultTabController(
      length: 2,
      initialIndex: widget.initialTab == 'import' ? 1 : 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('数据导出与导入'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.download), text: '导出数据'),
              Tab(icon: Icon(Icons.upload), text: '导入数据'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            // 导出标签页
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.upload_file,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '导出数据',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '导出格式：',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  SegmentedButton<ExportFormat>(
                    segments: ExportFormat.values
                        .map(
                          (format) => ButtonSegment<ExportFormat>(
                            value: format,
                            label: Text(_getFormatName(format)),
                          ),
                        )
                        .toList(),
                    selected: {_selectedExportFormat},
                    onSelectionChanged: (Set<ExportFormat> newSelection) {
                      setState(() {
                        _selectedExportFormat = newSelection.first;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: _isExporting ? null : _exportData,
                      icon: _isExporting
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            )
                          : const Icon(Icons.download),
                      label: Text(_isExporting ? '导出中...' : '导出数据'),
                    ),
                  ),
                ],
              ),
            ),
            
            // 导入标签页
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.upload,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '导入数据',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '导入格式：',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  SegmentedButton<ExportFormat>(
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
                  const SizedBox(height: 12),
                  if (_importFilePath != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        '已选择文件：${_importFilePath!.split('/').last}',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
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
                          icon: const Icon(Icons.folder_open),
                          label: const Text('选择文件'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: _isImporting || _importFilePath == null
                              ? null
                              : _importData,
                          icon: _isImporting
                              ? const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(Icons.upload),
                          label: Text(_isImporting ? '导入中...' : '导入数据'),
                        ),
                      ),
                    ],
                  ),
                  if (_isImporting) ...[
                    const SizedBox(height: 12),
                    LinearProgressIndicator(value: _importProgress),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
