import 'package:flutter/material.dart';
import 'package:go_crispy/screens/order_details.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/utils/const_images.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 238,
                decoration:const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         const Icon(Icons.circle, color: Colors.green, size: 12),
                         const SizedBox(width: 5),
                        const  Text(
                            'Online',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Transform.scale(
                            scale: 0.7,
                            child: Switch(
                              value: true,
                              onChanged: (bool newValue) {},
                              activeColor: kWhite,
                              activeTrackColor: kOrangeColor,
                            ),
                          ),
                        ],
                      ),
                     const Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(Images.profile),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Nidal Zubair',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'nigocrispy@gmail.com',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 0.2),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatistics(),
                  SizedBox(height: 11),
                  _buildActiveOrdersTitle(),
                  SizedBox(height: 8),
                  _buildActiveOrderCard(
                    orderId: 'Order ID #00131',
                    location: 'Go Crispy, Al Muntazah Branch',
                    status: 'Pending',
                    statusColor: kborderyellowColor,
                    onConfirm: () {},
                    onViewDetails: () {},
                    onTakeMeThere: () {},
                  ),
                  SizedBox(height: 8),
                  _buildActiveOrderCard(
                    orderId: 'Order ID #00131',
                    location: 'Go Crispy, Al Muntazah Branch',
                    status: 'Completed',
                    statusColor: Colors.green,
                    onConfirm: () {},
                    onViewDetails: () {},
                    onTakeMeThere: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatCard(
              title: 'Total Orders',
              count: '132',
              color: kOrangeColor,
              width: 169,
              height: 160,
              countFontSize: 64,
            ),
            Column(
              children: [
                _buildStatCard(
                  title: 'Completed',
                  count: '130',
                  color: kbordergreenColor,
                  width: 170,
                  height: 76,
                  countFontSize: 40,
                ),
                SizedBox(height: 8),
                _buildStatCard(
                  title: 'Pending',
                  count: '02',
                  color: kborderyellowColor,
                  width: 170,
                  height: 76,
                  countFontSize: 40,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActiveOrdersTitle() {
    return Text(
      'Active Orders',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
  return Builder(
    builder: (BuildContext context) {
      return Container(
        height: 135,
        width: MediaQuery.of(context).size.width * 0.9, // Adjust width based on screen width
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderId,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        status,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(Images.location),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      location,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const OrderDetails()));
                    },
                    child:const Text(
                      'View Details',
                      style: TextStyle(color: kborderyellowColor, fontSize: 12),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kboarder,
                      minimumSize: Size(MediaQuery.of(context).size.width * 0.25, 40), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: ktakeColor),
                      ),
                    ),
                    onPressed: onTakeMeThere,
                    child: Text(
                      'Take me there',
                      style: TextStyle(color: kOrangeColor, fontSize: 12),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onConfirm,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width * 0.25, 40), // Adjust minimum size based on screen width
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor:
                          status == 'Pending' ? kbordergreenColor : kOrangeColor,
                    ),
                    child: Text(
                      status == 'Pending' ? 'Confirm' : 'Cancel',
                      style: TextStyle(fontSize: 12, color: kWhite),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

  Widget _buildStatCard({
    required String title,
    required String count,
    required Color color,
    required double width,
    required double height,
    double countFontSize = 28,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 10,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: -2,
            right: 10,
            child: Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: countFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
