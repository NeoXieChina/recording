import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recording/data/datasources/data_export_service.dart';
import 'package:recording/generated/l10n/app_localizations.dart';

class ExportScreen extends StatefulWidget {
  const ExportScreen({super.key});

  @override
  State<ExportScreen> createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  ExportFormat _selectedExportFormat = ExportFormat.csv;
  bool _isExporting = false;

  Future<void> _exportData() async {
    final currentContext = context;
    final l10n = AppLocalizations.of(currentContext);
    setState(() {
      _isExporting = true;
    });

    try {
      final service = DataExportService();
      final bytes = await service.exportDataToBytes(_selectedExportFormat);

      if (!currentContext.mounted) return;

      final fileExtension = _getFileExtension(_selectedExportFormat);
      final timestamp = DateTime.now()
          .toIso8601String()
          .replaceAll(':', '-')
          .replaceAll('.', '-');
      final defaultFileName = 'export_$timestamp.$fileExtension';

      // 直接使用FilePicker保存文件，它会处理Android SAF URI
      final savePath = await FilePicker.saveFile(
        dialogTitle: l10n.export_data,
        fileName: defaultFileName,
        allowedExtensions: [fileExtension],
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
      ).showSnackBar(SnackBar(content: Text(l10n.export_success)));
    } catch (e) {
      if (!currentContext.mounted) return;

      setState(() {
        _isExporting = false;
      });

      ScaffoldMessenger.of(
        currentContext,
      ).showSnackBar(SnackBar(content: Text(l10n.export_failed(e.toString()))));
    }
  }

  /// 从路径或URI中提取文件名

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
            title: Text(l10n.export_data),
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
                    selected: {_selectedExportFormat},
                    onSelectionChanged: (Set<ExportFormat> newSelection) {
                      setState(() {
                        _selectedExportFormat = newSelection.first;
                      });
                    },
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _isExporting ? null : _exportData,
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
                              l10n.export_data,
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
