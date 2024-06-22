import 'package:flutter/material.dart';
import 'package:go_crispy/screens/wallet.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/utils/const_images.dart';

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
              child:  Column(
                children: [
                  SizedBox(height: 40),
                 const Text(
                    'My Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                     const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(Images.profile),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Image.asset(Images.userEdit,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                 const Text(
                    'Nidal Zubair',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                 const Text(
                    'nigocrispy@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white54),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
              },
              child: Container(
                width: 353,
                height: 85,
                padding: const EdgeInsets.symmetric(vertical: 8,),
                decoration: const BoxDecoration(
                  color: kOrangeColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Column(
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
            ),
            const SizedBox(height: 20),
            const SettingsOption(
              image:Images.privacyPolicy,
              text: 'Privacy Policy',
            ),
            const SettingsOption(
              image:Images.termsCondition, 
              text: 'Terms & Conditions',
            ),
            const SettingsOption(
              image: Images.logout,
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
  final String image;
  final String text;
  final bool isLogout;

  const SettingsOption({
    required this.image,
    required this.text,
    this.isLogout = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 24, 
                height: 24, 
                color: isLogout ? kOrangeColor : Colors.black,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: isLogout ? kOrangeColor : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          if (!isLogout) const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}
