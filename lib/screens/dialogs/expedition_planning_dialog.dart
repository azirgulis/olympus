import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/harbor.dart';
import '../../providers/harbor_provider.dart';
import '../../providers/inventory_provider.dart';
import '../../providers/player_provider.dart';

class ExpeditionPlanningDialog extends ConsumerStatefulWidget {
  final TradeRoute route;
  final Ship ship;

  const ExpeditionPlanningDialog({
    super.key,
    required this.route,
    required this.ship,
  });

  @override
  ConsumerState<ExpeditionPlanningDialog> createState() => _ExpeditionPlanningDialogState();
}

class _ExpeditionPlanningDialogState extends ConsumerState<ExpeditionPlanningDialog> {
  final Map<String, int> selectedCargo = {};
  int totalCargoWeight = 0;
  int totalCost = 0;

  @override
  Widget build(BuildContext context) {
    final inventory = ref.watch(inventoryProvider);
    final player = ref.watch(playerProvider);

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade100,
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.sailing, color: Colors.blue.shade700, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plan Expedition',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${widget.ship.name} to ${widget.route.destination}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.close, color: Colors.blue.shade700),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Ship and Route Info
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ship Capacity',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          '$totalCargoWeight / ${widget.ship.cargoCapacity}',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: totalCargoWeight > widget.ship.cargoCapacity
                                ? Colors.red : Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Travel Time',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          '${(widget.route.baseTravelTime * (100 / widget.ship.speed)).round()}h',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Cost',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          '$totalCost δ',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: totalCost > player.drachmae
                                ? Colors.red : Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Cargo Selection
            Text(
              'Select Cargo to Export',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: widget.route.exports.length,
                  itemBuilder: (context, index) {
                    final good = widget.route.exports[index];
                    final availableInInventory = inventory.items
                        .where((item) => item.id == good.id)
                        .fold(0, (sum, item) => sum + item.quantity);

                    final selectedQuantity = selectedCargo[good.id] ?? 0;
                    final unitPrice = (good.baseValue * good.demandMultiplier).round();

                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        good.name,
                                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        good.description,
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Available: $availableInInventory',
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      'Price: $unitPrice δ/unit',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: Colors.green.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: availableInInventory > 0 && selectedQuantity > 0
                                      ? () => _updateCargo(good.id, selectedQuantity - 1, unitPrice)
                                      : null,
                                  icon: const Icon(Icons.remove_circle),
                                ),
                                Text(
                                  '$selectedQuantity',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: availableInInventory > selectedQuantity
                                      ? () => _updateCargo(good.id, selectedQuantity + 1, unitPrice)
                                      : null,
                                  icon: const Icon(Icons.add_circle),
                                ),
                                const Spacer(),
                                Text(
                                  'Total: ${selectedQuantity * unitPrice} δ',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _canStartExpedition() ? _startExpedition : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Start Expedition'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _updateCargo(String goodId, int quantity, int unitPrice) {
    setState(() {
      if (quantity <= 0) {
        selectedCargo.remove(goodId);
      } else {
        selectedCargo[goodId] = quantity;
      }
      _recalculateTotals(unitPrice);
    });
  }

  void _recalculateTotals(int unitPrice) {
    totalCargoWeight = selectedCargo.values.fold(0, (sum, qty) => sum + qty);
    totalCost = selectedCargo.entries.fold(0, (sum, entry) {
      final good = widget.route.exports.firstWhere((g) => g.id == entry.key);
      final price = (good.baseValue * good.demandMultiplier).round();
      return sum + (price * entry.value);
    });
  }

  bool _canStartExpedition() {
    final player = ref.read(playerProvider);
    return selectedCargo.isNotEmpty &&
           totalCargoWeight <= widget.ship.cargoCapacity &&
           totalCost <= player.drachmae;
  }

  void _startExpedition() {
    if (!_canStartExpedition()) return;

    final cargo = selectedCargo.entries.map((entry) {
      final good = widget.route.exports.firstWhere((g) => g.id == entry.key);
      final unitPrice = (good.baseValue * good.demandMultiplier).round();
      return CargoItem(
        goodId: entry.key,
        quantity: entry.value,
        purchasePrice: unitPrice,
      );
    }).toList();

    ref.read(harborProvider.notifier).startExpedition(
      widget.route.id,
      widget.ship.id,
      cargo,
      ref,
    );

    Navigator.of(context).pop();

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${widget.ship.name} has departed for ${widget.route.destination}!',
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}