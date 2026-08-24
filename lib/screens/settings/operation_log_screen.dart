import 'package:flutter/material.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/operation_log.dart';
import 'package:recording/providers/operation_log_provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class OperationLogScreen extends StatefulWidget {
  const OperationLogScreen({super.key});

  @override
  State<OperationLogScreen> createState() => _OperationLogScreenState();
}

class _OperationLogScreenState extends State<OperationLogScreen> {
  final OperationLogProvider _logProvider = OperationLogProvider();

  @override
  void initState() {
    super.initState();
    _logProvider.loadRecentLogs();
  }

  String _getOperationTypeName(OperationType type, AppLocalizations l10n) {
    switch (type) {
      case OperationType.create:
        return l10n.operation_type_create;
      case OperationType.update:
        return l10n.operation_type_update;
      case OperationType.delete:
        return l10n.operation_type_delete;
      case OperationType.inbound:
        return l10n.operation_type_inbound;
      case OperationType.outbound:
        return l10n.operation_type_outbound;
    }
  }

  IconData _getOperationTypeIcon(OperationType type) {
    switch (type) {
      case OperationType.create:
        return Icons.add_circle_outline;
      case OperationType.update:
        return Icons.edit_outlined;
      case OperationType.delete:
        return Icons.delete_outline;
      case OperationType.inbound:
        return Icons.arrow_downward;
      case OperationType.outbound:
        return Icons.arrow_upward;
    }
  }

  Color _getOperationTypeColor(OperationType type) {
    switch (type) {
      case OperationType.create:
        return Colors.green;
      case OperationType.update:
        return Colors.blue;
      case OperationType.delete:
        return Colors.red;
      case OperationType.inbound:
        return Colors.orange;
      case OperationType.outbound:
        return Colors.purple;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }

  Future<void> _exportLogs() async {
    final l10n = AppLocalizations.of(context);
    try {
      await _logProvider.exportLogs();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.export_failed_message(e.toString())),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    }
  }

  void _showClearAllDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.clear_logs),
        content: Text(l10n.confirm_clear_logs),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              _logProvider.clearAllLogs();
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.logs_cleared),
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.operation_logs_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: _exportLogs,
            tooltip: l10n.export_logs,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: _showClearAllDialog,
            tooltip: l10n.clear_logs_tooltip,
          ),
        ],
      ),
      body: ListenableBuilder(
        listenable: _logProvider,
        builder: (context, child) {
          final logs = _logProvider.recentLogs;
          if (logs.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.history,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.no_operation_logs,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: logs.length,
            itemBuilder: (context, index) {
              final log = logs[index];
              final operationName = _getOperationTypeName(log.operationType, l10n);
              final icon = _getOperationTypeIcon(log.operationType);
              final color = _getOperationTypeColor(log.operationType);

              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ExpansionTile(
                  leading: CircleAvatar(
                    backgroundColor: color.withValues(alpha: 0.1),
                    child: Icon(icon, color: color),
                  ),
                  title: Text(
                    operationName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(_formatDateTime(log.createdAt)),
                   children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${l10n.log_operation_date_label}${_formatDateTime(log.createdAt)}',
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text('${l10n.log_item_label}${log.item.name}',
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text('${l10n.log_category_label}${log.item.category}'),
                          Text('${l10n.log_type_label}${log.item.itemType == ItemType.consumable ? l10n.consumable : l10n.durable}'),
                          Text('${l10n.log_quantity_label}${log.item.quantity} ${log.item.unit}'),
                          Text('${l10n.log_unit_price_label}${log.item.currencySymbol}${log.item.unitPrice.toStringAsFixed(2)}'),
                          Text('${l10n.log_total_price_label}${log.item.currencySymbol}${log.item.totalPrice.toStringAsFixed(2)}'),
                          if (log.item.expiryDate != null)
                            Text('${l10n.log_expiry_date_label}${log.item.expiryDate}'),
                          if (log.item.warrantyDate != null)
                            Text('${l10n.log_warranty_date_label}${log.item.warrantyDate}'),
                          if (log.item.purchaseDate != null)
                            Text('${l10n.log_purchase_date_label}${log.item.purchaseDate}'),
                          if (log.item.productionDate != null)
                            Text('${l10n.log_production_date_label}${log.item.productionDate}'),
                          if (log.item.shelfLifeMonths != null || log.item.shelfLifeDays != null)
                            Text('${l10n.log_shelf_life_label}${log.item.shelfLifeMonths}${l10n.shelf_life_months_suffix} ${log.item.shelfLifeDays}${l10n.shelf_life_days_suffix}'),
                          Text('${l10n.log_storage_location_label}${log.item.storageLocation.isEmpty ? l10n.log_not_set : log.item.storageLocation}'),
                          if (log.item.barcode != null) Text('${l10n.log_barcode_label}${log.item.barcode}'),
                          if (log.item.notes != null) Text('${l10n.log_notes_label}${log.item.notes}'),
                          Text('${l10n.log_alert_label}${log.item.enableAlert ? l10n.log_alert_enabled : l10n.log_alert_disabled}'),
                          if (log.item.alertDaysBefore != null)
                            Text('${l10n.log_alert_days_label}${log.item.alertDaysBefore}${l10n.alert_days_suffix}'),
                          if (log.operationType == OperationType.inbound ||
                              log.operationType == OperationType.outbound)
                            Text('${l10n.log_quantity_change_label}${log.quantityChange}'),
                          if (log.operationType == OperationType.update &&
                              log.fieldChanges != null &&
                              log.fieldChanges!.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                Text(l10n.log_field_changes_label,
                                    style: const TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                ...log.fieldChanges!.map(
                                  (change) => Padding(
                                    padding: const EdgeInsets.only(left: 8, top: 2),
                                    child: Text(
                                      '  ${change.fieldName}: ${change.oldValue ?? l10n.log_empty} -> ${change.newValue ?? l10n.log_empty}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
