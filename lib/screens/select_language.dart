import 'package:flutter/material.dart';
import 'package:go_crispy/screens/login_driver.dart';
import 'package:go_crispy/utils/colors.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String? _selectedLanguage = 'en'; 

  void navigateToLoginDriver() {
    if (_selectedLanguage == 'en') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginDriver()),
      );
    }else{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginDriver()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Image.asset('assets/images/go_crispy.png', width: 117, height: 160),
        ),
      ),
      bottomSheet: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          height: 250,
          width: double.infinity,
          color: kWhite,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildLanguageRow('English', 'en'),
             const Divider(),
              buildLanguageRow('العربي', 'ar'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLanguageRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style:const TextStyle(fontSize: 16)),
        Radio<String>(
          activeColor: kOrangeColor,
          value: value,
          groupValue: _selectedLanguage,
          onChanged: (String? newValue) {
            setState(() {
              _selectedLanguage = newValue;
              navigateToLoginDriver();
            });
          },
        ),
      ],
    );
  }
}
