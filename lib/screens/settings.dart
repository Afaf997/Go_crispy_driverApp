import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(height: 60), // Space for the status bar
                  Text(
                    'My Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_image.png'), // Replace with actual image
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nidal Zubair',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    'nigocrispy@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white54),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 353,
              height: 85,
              padding: const EdgeInsets.symmetric(vertical: 8,),
              decoration: const BoxDecoration(
                color: kOrangeColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child:const  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                    'Total Collected',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Text(
                    '1360 QR',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SettingsOption(
              icon: Icons.privacy_tip,
              text: 'Privacy Policy',
            ),
            const SettingsOption(
              icon: Icons.security,
              text: 'Terms & Conditions',
            ),
            const SettingsOption(
              icon: Icons.logout,
              text: 'Logout',
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isLogout;

  const SettingsOption({
    required this.icon,
    required this.text,
    this.isLogout = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: isLogout ? kOrangeColor : Colors.black),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: isLogout ? kOrangeColor : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}
