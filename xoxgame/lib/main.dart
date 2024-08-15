import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xoxgame/color_changer_store.dart';
import 'package:xoxgame/gesturedetector_custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOX Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'XOX'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item1',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item2',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item3',
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item1',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item2',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item3',
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item1',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item2',
                  ),
                  CustomGestureDetector(
                    colorChangerStore: ColorChangerStore(),
                    text: 'Item3',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
