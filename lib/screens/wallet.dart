import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'With driver'},
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'With driver'},
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'With driver'},
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'With driver'},
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'Received by admin'},
      {'date': '01-05-2024', 'amount': '1000 QR', 'status': 'Received by admin'},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.black,
        title: const Text('Wallet', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 20)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          border: TableBorder.all(color: Colors.transparent),
          children: [
            const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Date', style: TextStyle(fontWeight: FontWeight.w600, color: kOrangeColor)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 14),
                  child: Text('Amount', style: TextStyle(fontWeight: FontWeight.w600, color: kOrangeColor)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Status', style: TextStyle(fontWeight: FontWeight.w600, color: kOrangeColor)),
                    ],
                  ),
                ),
              ],
            ),
           const TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(color: kdividercolor,thickness: 0.2,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(color:kdividercolor,thickness: 0.2,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(color:kdividercolor,thickness: 0.2,),
                ),
              ],
            ),
            for (var transaction in transactions)
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(transaction['date']!,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 14),
                    child: Text(transaction['amount']!,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          transaction['status']!,
                          style: TextStyle(
                            color: transaction['status'] == 'With driver' ? kborderyellowColor : kbordergreenColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
