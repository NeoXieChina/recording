import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:recording/data/datasources/data_export_service.dart';
import 'package:recording/generated/l10n/app_localizations.dart';

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

    final l10n = AppLocalizations.of(currentContext);

    return await showDialog<DuplicateAction>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: Text(l10n.duplicate_data_handling),
        content: Text(l10n.duplicate_data_detected),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.skip),
            child: Text(l10n.skip),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.overwrite),
            child: Text(l10n.overwrite),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, DuplicateAction.skipAll),
            child: Text(l10n.skip_all),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pop(context, DuplicateAction.overwriteAll),
            child: Text(l10n.overwrite_all),
          ),
        ],
      ),
    );
  }

  Future<void> _importData() async {
    final currentContext = context;
    final l10n = AppLocalizations.of(currentContext);
    if (_selectedImportFormat == null) {
      if (!currentContext.mounted) return;
      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text(l10n.select_import_format_first)));
      return;
    }

    if (_importFilePath == null) {
      final result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: [_getFileExtension(_selectedImportFormat!)],
        withData: true, // 始终获取文件字节数据
      );

      if (result == null || result.files.isEmpty) return;

      final file = result.files.single;
      if (file.bytes == null) return;

      // 将字节写入临时文件（避免SAF URI路径问题）
      final tempDir = await getTemporaryDirectory();
      final tempFile = File(
        '${tempDir.path}/import_${DateTime.now().millisecondsSinceEpoch}.${_getFileExtension(_selectedImportFormat!)}',
      );
      await tempFile.writeAsBytes(file.bytes!);
      final filePath = tempFile.path;

      if (!currentContext.mounted) return;
      setState(() {
        _importFilePath = filePath;
      });
    }

    if (_importFilePath == null) return;

    // 二次确认对话框
    if (!currentContext.mounted) return;
    final confirm = await showDialog<bool>(
      context: currentContext,
      builder: (context) => AlertDialog(
        title: Text(l10n.confirm_import),
        content: Text(l10n.confirm_import_message),
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

      ScaffoldMessenger.of(currentContext).showSnackBar(
        SnackBar(content: Text(l10n.import_success(importedCount))),
      );
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
      ).showSnackBar(SnackBar(content: Text(l10n.import_failed(e.toString()))));
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

  String _getFormatName(ExportFormat format, AppLocalizations l10n) {
    switch (format) {
      case ExportFormat.csv:
        return l10n.format_csv;
      case ExportFormat.txt:
        return l10n.format_txt;
      case ExportFormat.sql:
        return l10n.format_sql;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.import_data),
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
                            label: Text(_getFormatName(format, l10n)),
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
                        l10n.selected_file(p.basename(_importFilePath!)),
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
                          onPressed: () async {
                            final localL10n = AppLocalizations.of(context);
                            if (_selectedImportFormat == null) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      localL10n.select_import_format_first,
                                    ),
                                  ),
                                );
                              }
                              return;
                            }

                            final result = await FilePicker.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: [
                                _getFileExtension(_selectedImportFormat!),
                              ],
                              withData: true, // 始终获取文件字节数据
                            );

                            if (result != null && result.files.isNotEmpty) {
                              final file = result.files.single;
                              if (file.bytes == null) return;

                              // 将字节写入临时文件（避免SAF URI路径问题）
                              final tempDir = await getTemporaryDirectory();
                              final tempFile = File(
                                '${tempDir.path}/import_${DateTime.now().millisecondsSinceEpoch}.${_getFileExtension(_selectedImportFormat!)}',
                              );
                              await tempFile.writeAsBytes(file.bytes!);
                              final filePath = tempFile.path;

                              setState(() {
                                _importFilePath = filePath;
                              });
                            }
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: Text(
                            l10n.select_file,
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
                              : Text(
                                  l10n.import_data,
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
