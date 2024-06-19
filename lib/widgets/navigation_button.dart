import 'package:flutter/material.dart';
import 'package:go_crispy/utils/colors.dart';

class ReusableNavigationButton extends StatelessWidget {
  final Widget navigationTarget;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;

  const ReusableNavigationButton({
    super.key,
    required this.navigationTarget,
    required this.buttonText,
    this.buttonColor = kOrangeColor,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.9; 
    final buttonHeight = screenWidth * 0.13; 

    return Center(
      child: SizedBox(
        width: buttonWidth,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => navigationTarget),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: EdgeInsets.symmetric(vertical: buttonHeight * 0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
