import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        title: const Text('Order History', style: TextStyle(fontWeight: FontWeight.w700, color: kWhite, fontSize: 20)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: 119,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kWhite,
            ),
            margin: const EdgeInsets.only(bottom: 13.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Order ID #00131',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kbordergreenColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 8.0,
                        ),
                        child: const Text(
                          'Completed',
                          style: TextStyle(color: kWhite, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6.0), // Adjusted spacing
                  const Row(
                    children: [
                      Icon(Icons.location_on, size: 16.0), // Adjusted icon size
                      SizedBox(width: 4.0),
                      Expanded(
                        child: Text(
                          '123 Main Street, Anytown, Doha',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(), // Adjusted spacing
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order at 18 April 2024',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: kborderTextColor),
                      ),
                      Column(
                        children: [
                          Text('Amount', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                          Text(
                            '225 QR',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kOrangeColor,
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
