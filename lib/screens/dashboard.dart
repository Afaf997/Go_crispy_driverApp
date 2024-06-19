import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/utils/const_images.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 258,
                  decoration: const BoxDecoration(
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
                        Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Icon(Icons.circle,
                                    color: Colors.green, size: 12),
                                const SizedBox(width: 5),
                                const Text(
                                  'Online',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 18,
                                  child: Transform.scale(
                                    scale: 0.7,
                                    child: Switch(
                                      value: true,
                                      onChanged: (bool newValue) {},
                                      activeColor: kOrangeColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                       const Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage(Images.profile),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
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
                                Divider(
                                  color: kIconColor,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:201,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStatistics(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
                const SizedBox(height: 8),
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
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(
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
