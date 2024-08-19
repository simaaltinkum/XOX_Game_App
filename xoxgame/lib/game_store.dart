import 'package:mobx/mobx.dart';

part 'game_store.g.dart';

class GameStore = _GameStore with _$GameStore;

abstract class _GameStore with Store {

  @observable
  ObservableList<String> displayElement = ObservableList<String>.of(List.filled(9, ''));

  @observable
  bool xTurn = false;

  @observable
  int filledBoxes = 0;

  @observable
  String winner = '';

  @action
  void makeMove(int index) {
    if (displayElement[index] == '' && winner.isEmpty) {
      if (xTurn) {
        displayElement[index] = 'X';
      } else {
        displayElement[index] = 'O';
      }
      filledBoxes++;
      updateTurn();
      _checkWinner();  
    }
  }

  @action
  void updateTurn() {
    xTurn = !xTurn;
  }

  @action
  void _checkWinner() {
    final List<List<int>> winningCombinations = [
      [0, 1, 2], 
      [3, 4, 5], 
      [6, 7, 8],
      [0, 3, 6], 
      [1, 4, 7], 
      [2, 5, 8], 
      [0, 4, 8], 
      [2, 4, 6], 
    ];

    for (var combination in winningCombinations) {
      if (displayElement[combination[0]] != '' &&
          displayElement[combination[0]] == displayElement[combination[1]] &&
          displayElement[combination[1]] == displayElement[combination[2]]) {
        winner = displayElement[combination[0]];
        return;
      }
    }

    if (filledBoxes == 9) {
      winner = 'Draw';
    }
  }

  @action
  void resetGame() {
    displayElement = ObservableList<String>.of(List.filled(9, ''));
    winner = '';
    filledBoxes = 0;
  }
}
