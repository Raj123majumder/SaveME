import 'package:flutter/material.dart';
import '../utils/consts.dart';

class WordButton extends StatelessWidget {
  WordButton({required this.buttonTitle, required this.onPress});

  final VoidCallback onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(4.0),
        primary: kWordButtonColor
      ),
      onPressed: onPress,
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style: kWordButtonTextStyle,
      ),
    );
  }
}