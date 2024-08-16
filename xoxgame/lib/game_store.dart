import 'package:mobx/mobx.dart';
part 'game_store.g.dart';

class GameStore = _GameStore with _$GameStore;

abstract class _GameStore with Store {
  @observable
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];

  @observable
  bool oTurn = true;

  @observable
  int filledBoxes = 0;

  @computed
  List<String> get board => displayElement;

  @action
  void makeMove(int index) {
    if (displayElement[index] == '') {
      if (oTurn) {
        displayElement[index] = 'O';
      } else {
        displayElement[index] = 'X';
      }
      filledBoxes++;
      oTurn = !oTurn;
    }
  }

  @action
  void _checkWinner() {
    // Kazananı kontrol etme mantığı buraya gelecek
  }
}