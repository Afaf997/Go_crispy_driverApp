import 'package:flutter/material.dart';
import 'package:go_crispy/screens/home_screen.dart';
import 'package:go_crispy/screens/order_history.dart';
import 'package:go_crispy/screens/settings.dart';
import 'package:go_crispy/utils/colors.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
   const DashBoard(),
   const OrderHistory(),
   const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(31, 58, 57, 57),
            blurRadius: 10,
            spreadRadius: 5,
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            icon: Icons.sentiment_satisfied_outlined,
            index: 0,
            isSelected: selectedIndex == 0,
            onTap: onItemTapped,
            label: 'Go Crispy',
          ),
          _buildNavItem(
            icon: Icons.shopping_cart,
            index: 1,
            isSelected: selectedIndex == 1,
            onTap: onItemTapped,
            label: 'Cart',
          ),
          _buildNavItem(
            icon: Icons.shopping_bag_outlined,
            index: 2,
            isSelected: selectedIndex == 2,
            onTap: onItemTapped,
            label: 'my order',
          ),
          _buildNavItem(
            icon: Icons.favorite_outline_rounded,
            index: 3,
            isSelected: selectedIndex == 3,
            onTap: onItemTapped,
            label: 'Favourite',
          ),
          _buildNavItem(
            icon: Icons.filter_list_outlined,
            index: 4,
            isSelected: selectedIndex == 4,
            onTap: onItemTapped,
            label: 'menu',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required int index,
    required bool isSelected,
    required ValueChanged<int> onTap,
    required String label,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: isSelected
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: kOrangeColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: Colors.grey,
            ),
    );
  }
}

