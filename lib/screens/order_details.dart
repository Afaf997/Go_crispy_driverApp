import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/utils/const_images.dart';
import 'package:go_crispy/widgets/reusable_text.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color:kWhite, size: 19),
        ),
        toolbarHeight: screenHeight * 0.1,
        backgroundColor: Colors.black,
        title: const Text(
          'Order Details',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.67,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text('Order ID #00131',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14)),
                        Spacer(),
                        Text('Order at 18 April 2024',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: kborderTextColor)),
                      ],
                    ),
                    const Divider(color: kdividercolor, thickness: 0.2),
                    const Text('Be prepared to deliver',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                    const Row(
                      children: [
                        Text('the food',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        Spacer(),
                        Text('0-5 Min',
                            style: TextStyle(
                                color: kOrangeColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.08,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: kOrangeColor,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 10),
                        child: Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Customer',
                                    style:
                                        TextStyle(color: kWhite, fontSize: 12)),
                                Text('Aysha Fathima',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: kWhite,
                                        fontSize: 20)),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.phone_in_talk_outlined,
                                  color: kWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text('item',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600)),
                    Row(
                      children: [
                        Image.asset(
                          Images.tornado,
                          width: screenWidth * 0.2,
                          height: screenWidth * 0.2,
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                                text: 'Tornado Fries',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                            SizedBox(height: 10),
                            ReusableText(
                                text: 'Qty 1',
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                        const Spacer(),
                        const Column(
                          children: [
                            ReusableText(
                                text: 'Amnt',
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            SizedBox(height: 10),
                            ReusableText(
                                text: '225 QR',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: kOrangeColor),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: kdividercolor, thickness: 0.2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Item price',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ReusableText(
                            text: '225 QR',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Addons',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ReusableText(
                            text: '25 QR',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Discount',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ReusableText(
                            text: '0 QR',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Divider(color: kdividercolor, thickness: 0.2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Subtotal',
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        ReusableText(
                            text: '250 QR',
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Delivery fee',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        ReusableText(
                            text: '10 QR',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const SizedBox(height: 6),
                    const Divider(color: kdividercolor, thickness: 0.2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: 'Total',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                        ReusableText(
                            text: '260 QR',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: screenWidth * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                            text: 'Payment Status',
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(Images.cardTick),
                            const SizedBox(
                              width: 5,
                            ),
                            const ReusableText(
                                text: 'Debit card ending ***808',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ],
                        ),
                      ],
                    ),
                    const ReusableText(
                        text: 'Paid',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: kbordergreenColor),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Action Buttons Section
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kOrangeColor,
                      minimumSize: Size(screenWidth * 0.9, screenHeight * 0.06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Collect Cash',
                        style: TextStyle(color: kWhite)),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kborderyellowColor,
                      minimumSize: Size(screenWidth * 0.9, screenHeight * 0.06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('View Direction',
                        style: TextStyle(color: kWhite)),
                  ),
                  const SizedBox(height: 12),
                  SwipeButton.expand(
                    thumb: Container(
                      child: const Center(
                        child: Icon(
                          Icons.keyboard_double_arrow_right_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(8),
                    activeTrackColor: kWhite,
                    activeThumbColor: kOrangeColor,
                    height: 50,
                    child: const Text(
                      "Start to Deliver",
                      style: TextStyle(),
                    ),
                    onSwipe: () {
                      
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
