import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'xox_view.dart';
import '../viewModel/game_store.dart';

class PlayerNamesView extends StatefulWidget {
  @override
  _PlayerNamesViewState createState() => _PlayerNamesViewState();
}

class _PlayerNamesViewState extends State<PlayerNamesView> {
  final TextEditingController _player1Controller = TextEditingController();
  final TextEditingController _player2Controller = TextEditingController();
  final GameStore gameStore = GameStore();

  void _startGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => XOXView(gameStore: gameStore),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Player Names'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Observer(
                builder: (_) => TextField(
                      controller: _player1Controller,
                      onChanged: (value) {
                        gameStore.firstUser = value;
                      },
                      onSubmitted: (value) {
                        gameStore.firstUser = value;
                      },
                      decoration: InputDecoration(labelText: 'Player 1 Name'),
                    )),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) {
                  gameStore.secondUser = value;
                },
                controller: _player2Controller,
                decoration: InputDecoration(labelText: 'Player 2 Name'),
                onSubmitted: (value) {
                  gameStore.secondUser = value;
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startGame,
              child: Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}
