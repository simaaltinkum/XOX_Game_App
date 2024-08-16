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

  @action
  void makeMove(int index) {
    if (displayElement[index] == '') {
      if (xTurn) {
        displayElement[index] = 'X';
      } else {
        displayElement[index] = 'O';
      }
      filledBoxes++;
      updateTurn();  
    }
  }

  @action
  void updateTurn() {
    xTurn = !xTurn;
  }

  @action
  void _checkWinner() {
    // Kazananı kontrol etme mantığı buraya eklenecek
  }
}
