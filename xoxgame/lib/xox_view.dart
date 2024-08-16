import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'game_store.dart';

class XOXView extends StatelessWidget {
  final GameStore gameStore;

  XOXView({
    required this.gameStore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XOX Game'),
      ),
      body: Observer(builder: (context) {
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Observer(
                    builder: (_) => ElevatedButton(
                      onPressed: () {
                        gameStore.makeMove(index);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Text(
                            gameStore.displayElement[index],
                            style: const TextStyle(fontSize: 32),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
