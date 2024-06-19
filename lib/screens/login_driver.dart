import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';
import 'package:go_crispy/widgets/custom_bottom_navigation.dart';
import 'package:go_crispy/widgets/navigation_button.dart';
import 'package:go_crispy/widgets/reusable_text.dart'; // Ensure you have this file with the colors defined.

class LoginDriver extends StatefulWidget {
  @override
  _LoginDriverState createState() => _LoginDriverState();
}

class _LoginDriverState extends State<LoginDriver> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            const Center(
              child: Text(
                "Login as driver",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                  height: 0.99,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter email address',
                labelStyle: const TextStyle(color: kborderTextColor, fontSize: 14),
                fillColor: kborderColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter password',
                labelStyle: const TextStyle(color: kborderTextColor, fontSize: 14),
                fillColor: kborderColor,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _rememberMe = newValue!;
                    });
                  },
                  activeColor: kborderColor,
                  checkColor: kOrangeColor,
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 12, color: kblackcolor),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ReusableText(
                  text: 'By clicking "continue" you agree with',
                  color: kgreycolor,
                  fontSize: 12,
                ),
                const ReusableText(
                  text: 'our terms and conditions',
                  color: Colors.black,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
                const SizedBox(height: 15),
                 ReusableNavigationButton(
                  navigationTarget: MainScreen(),
                  buttonText: 'continue',
                  buttonColor: kOrangeColor,
                  textColor: kWhite,
                  fontSize: 16,
                ),
                 SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
