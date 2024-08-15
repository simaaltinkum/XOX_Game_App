import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xoxgame/color_changer_store.dart';

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({
    super.key,
    required this.colorChangerStore,
    required this.text,
  });

  final ColorChangerStore colorChangerStore;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorChangerStore.changeColor,
      child: Observer(
        builder: (_) => Container(
          color: colorChangerStore.color,
          width: 100.0,
          height: 100.0,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
