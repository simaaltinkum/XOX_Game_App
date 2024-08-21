import 'package:mobx/mobx.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../view/player_names.dart';

part 'game_store.g.dart';

class GameStore = _GameStore with _$GameStore;

abstract class _GameStore with Store {
  @observable
  String firstUser = "";
  @observable
  String secondUser = "";

  @observable
  ObservableList<String> displayElement =
      ObservableList<String>.of(List.filled(9, ''));

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

        if (winner == 'X') {
          winner = firstUser;
        } else {
          winner = secondUser;
        }
        print(winner);
        _saveWinnerToFirestore();
        return;
      }
    }

    if (filledBoxes == 9) {
      winner = 'Draw';
      _saveWinnerToFirestore();
    }
  }

  // void _nameWinner(player1Name, player2Name) {
  // if (winner == 'X') {
  // winner = player1Name;
  // }else {
  // winner = player2Name;
  //}
  // }

  void _saveWinnerToFirestore() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference winnerCollectionRef = firestore.collection('winner');

    winnerCollectionRef.add({
      'winnerGame': winner,
    }).then((value) {
      print("Winner Added");
    }).catchError((error) {
      print("Failed to add winner: $error");
    });
  }

  @action
  void resetGame() {
    displayElement = ObservableList<String>.of(List.filled(9, ''));
    winner = '';
    filledBoxes = 0;
  }
}
