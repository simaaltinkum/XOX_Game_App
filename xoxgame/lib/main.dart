import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xoxgame/xox_view.dart';
import 'game_store.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<GameStore>(create: (_) => GameStore()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XOXView(
        gameStore: Provider.of<GameStore>(context),
      ),
    );
  }
}
