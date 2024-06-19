import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}Widget _buildActiveOrdersTitle() {
    return const Text(
      'Active Orders',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildActiveOrderCard({
    required String orderId,
    required String location,
    required String status,
    required Color statusColor,
    required VoidCallback onConfirm,
    required VoidCallback onViewDetails,
    required VoidCallback onTakeMeThere,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  orderId,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_pin, color: Colors.black, size: 20),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    location,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: onViewDetails,
                  child: const Text('View Details'),
                ),
                TextButton(
                  onPressed: onTakeMeThere,
                  child: const Text('Take me there'),
                ),
                ElevatedButton(
                  onPressed: onConfirm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        status == 'Pending' ? Colors.green : Colors.red,
                  ),
                  child: Text(status == 'Pending' ? 'Confirm' : 'Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }