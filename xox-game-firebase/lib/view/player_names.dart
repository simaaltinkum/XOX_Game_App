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
  final _formKey = GlobalKey<FormState>();

  void _startGame() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => XOXView(gameStore: gameStore),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Enter Player Names'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Observer(
                builder: (_) => Center(
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      gameStore.firstUser = value;
                    },
                    onChanged: (value) => gameStore.firstUser = value,
                    controller: _player1Controller,
                    decoration: InputDecoration(labelText: 'Player 1 Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Player 1 name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Observer(
                  builder: (_) => Center(
                        child: TextFormField(
                          onFieldSubmitted: (value) {
                            gameStore.secondUser = value;
                          },
                          onChanged: (value) => gameStore.secondUser = value,
                          controller: _player2Controller,
                          decoration:
                              InputDecoration(labelText: 'Player 2 Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Player 2 name';
                            }
                            return null;
                          },
                        ),
                      )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _startGame,
                child: Text('Start Game'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
