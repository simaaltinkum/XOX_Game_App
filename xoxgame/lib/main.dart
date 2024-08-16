import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'game_store.dart';

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
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final GameStore gameStore = GameStore();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Observer(
        builder: (_) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  gameStore.makeMove(index);
                },
                child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: Center(
                      child: Text(
                        gameStore.displayElement[index],
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}