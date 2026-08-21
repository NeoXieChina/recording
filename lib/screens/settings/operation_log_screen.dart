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
        return '录入';
      case OperationType.update:
        return '编辑';
      case OperationType.delete:
        return '删除';
      case OperationType.inbound:
        return '入库';
      case OperationType.outbound:
        return '出库';
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
    try {
      await _logProvider.exportLogs();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('导出失败: $e'),
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
        title: const Text('清空日志'),
        content: const Text('确定要清空所有操作日志吗？此操作不可恢复。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () async {
              Navigator.pop(ctx);
              await _logProvider.clearAllLogs();
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('日志已清空'),
                    duration: Duration(seconds: 2),
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
        title: const Text('操作日志'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: _exportLogs,
            tooltip: '导出日志',
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: _showClearAllDialog,
            tooltip: '清空日志',
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
                    '暂无操作日志',
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
                          Text('物品：${log.item.name}',
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text('分类：${log.item.category}'),
                          Text('类型：${log.item.itemType == ItemType.consumable ? "消耗品" : "耐用品"}'),
                          Text('数量：${log.item.quantity} ${log.item.unit}'),
                          Text('单价：${log.item.currencySymbol}${log.item.unitPrice.toStringAsFixed(2)}'),
                          Text('总价：${log.item.currencySymbol}${log.item.totalPrice.toStringAsFixed(2)}'),
                          if (log.item.expiryDate != null)
                            Text('过期日期：${log.item.expiryDate}'),
                          if (log.item.warrantyDate != null)
                            Text('保修日期：${log.item.warrantyDate}'),
                          if (log.item.purchaseDate != null)
                            Text('购买日期：${log.item.purchaseDate}'),
                          if (log.item.productionDate != null)
                            Text('生产日期：${log.item.productionDate}'),
                          if (log.item.shelfLifeMonths != null || log.item.shelfLifeDays != null)
                            Text('保质期：${log.item.shelfLifeMonths}个月 ${log.item.shelfLifeDays}天'),
                          Text('存储地点：${log.item.storageLocation.isEmpty ? "未设置" : log.item.storageLocation}'),
                          if (log.item.barcode != null) Text('条码：${log.item.barcode}'),
                          if (log.item.notes != null) Text('备注：${log.item.notes}'),
                          Text('预警：${log.item.enableAlert ? "开启" : "关闭"}'),
                          if (log.item.alertDaysBefore != null)
                            Text('预警天数：${log.item.alertDaysBefore}天'),
                          if (log.operationType == OperationType.inbound ||
                              log.operationType == OperationType.outbound)
                            Text('数量变化：${log.quantityChange}'),
                          if (log.operationType == OperationType.update &&
                              log.fieldChanges != null &&
                              log.fieldChanges!.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                const Text('修改字段：',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                const SizedBox(height: 4),
                                ...log.fieldChanges!.map(
                                  (change) => Padding(
                                    padding: const EdgeInsets.only(left: 8, top: 2),
                                    child: Text(
                                      '  ${change.fieldName}: ${change.oldValue ?? "空"} -> ${change.newValue ?? "空"}',
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
