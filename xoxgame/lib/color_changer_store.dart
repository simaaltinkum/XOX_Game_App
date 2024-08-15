import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'color_changer_store.g.dart';

class ColorChangerStore = _ColorChangerStore with _$ColorChangerStore;

abstract class _ColorChangerStore with Store {
  @observable
  Color color = Colors.blue[600]!;

  @action
  void changeColor() {
    List<Color> colors = [
      Colors.blue[600]!,
      Colors.green[600]!,
      Colors.yellow[600]!,
      Colors.red[600]!,
      Colors.purple[600]!,
      Colors.pink[600]!
    ];
    int currentIndex = colors.indexOf(color);
    color = colors[(currentIndex + 1) % colors.length];
  }
}
