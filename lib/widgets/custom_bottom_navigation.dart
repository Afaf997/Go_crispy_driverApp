import 'package:flutter/material.dart';
import 'package:go_crispy/screens/dashboard.dart';
import 'package:go_crispy/screens/order_history.dart';
import 'package:go_crispy/screens/settings.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/utils/const_images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
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
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration:const BoxDecoration(
        color: kWhite,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 5.6,
            color: Color(0x36000000),
          ),
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
            imagePath: Images.dashboard,
            index: 0,
            isSelected: selectedIndex == 0,
            onTap: onItemTapped,
            label: 'Dashboard',
          ),
          _buildNavItem(
            imagePath: Images.orderHistory,
            index: 1,
            isSelected: selectedIndex == 1,
            onTap: onItemTapped,
            label: 'Order History',
          ),
          _buildNavItem(
            imagePath: Images.settings,
            index: 2,
            isSelected: selectedIndex == 2,
            onTap: onItemTapped,
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String imagePath,
    required int index,
    required bool isSelected,
    required ValueChanged<int> onTap,
    required String label,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 32,
            width: 32,
            child: Image.asset(
              imagePath,
              color: isSelected ? kOrangeColor : kIconColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? kOrangeColor : kIconColor,
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
