import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../viewModel/game_store.dart';
import '../view/leader_board.dart';

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
        leading:
            GestureDetector(
              onTap: () {
                gameStore.resetGame();
                Navigator.pop(context);
              }, child: Icon(Icons.arrow_back),
              ),
        automaticallyImplyLeading: false,
        title: const Text('XOX Game'),
      ),
      body: Observer(
        builder: (context) {
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
              Observer(
                builder: (_) => Column(
                  children: [
                    Text(
                      gameStore.winner.isEmpty
                          ? ''
                          : 'Winner: ${gameStore.winner}',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gameStore.resetGame();
                      },
                      child: const Text('Reset Game'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        List<String> winner = await gameStore.fetchWinner();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LeaderBoardPage(winner: winner),
                          ),
                        );
                      },
                      child: const Text('Show Leader Board'),
                    ),
                  ],
                ),
              ),
              Observer(
                  builder: (_) => (gameStore.winner.isNotEmpty)
                      ? Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            gameStore.winner == 'Draw'
                                ? 'It\'s a Draw!'
                                : '${gameStore.winner} Won!',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        )
                      : Container())
            ],
          );
        },
      ),
    );
  }
}
