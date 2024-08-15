import 'package:flutter/material.dart';
import 'package:xoxgame/main.dart';

class CustomGestureDetector extends StatelessWidget {
  CustomGestureDetector(
      {super.key,
      required ColorChanger colorChanger1_1,
      required this.text,
      required this.onTap})
      : _colorChanger1_1 = colorChanger1_1;

  final ColorChanger _colorChanger1_1;
  String text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: _colorChanger1_1.getColor(),
        width: 100.0,
        height: 100.0,
        child: Center(child: Text(text)),
      ),
    );
  }
}
