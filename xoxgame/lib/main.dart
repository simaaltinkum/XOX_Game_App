import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'xox_view.dart';
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
      home: Consumer<GameStore>(
        builder: (context, gameStore, _) {
          return XOXView(gameStore: gameStore);
        },
      ),
    );
  }
}
