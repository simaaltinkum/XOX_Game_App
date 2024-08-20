// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on _GameStore, Store {
  late final _$displayElementAtom =
      Atom(name: '_GameStore.displayElement', context: context);

  @override
  ObservableList<String> get displayElement {
    _$displayElementAtom.reportRead();
    return super.displayElement;
  }

  @override
  set displayElement(ObservableList<String> value) {
    _$displayElementAtom.reportWrite(value, super.displayElement, () {
      super.displayElement = value;
    });
  }

  late final _$xTurnAtom = Atom(name: '_GameStore.xTurn', context: context);

  @override
  bool get xTurn {
    _$xTurnAtom.reportRead();
    return super.xTurn;
  }

  @override
  set xTurn(bool value) {
    _$xTurnAtom.reportWrite(value, super.xTurn, () {
      super.xTurn = value;
    });
  }

  late final _$filledBoxesAtom =
      Atom(name: '_GameStore.filledBoxes', context: context);

  @override
  int get filledBoxes {
    _$filledBoxesAtom.reportRead();
    return super.filledBoxes;
  }

  @override
  set filledBoxes(int value) {
    _$filledBoxesAtom.reportWrite(value, super.filledBoxes, () {
      super.filledBoxes = value;
    });
  }

  late final _$winnerAtom = Atom(name: '_GameStore.winner', context: context);

  @override
  String get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(String value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_GameStoreActionController =
      ActionController(name: '_GameStore', context: context);

  @override
  void makeMove(int index) {
    final _$actionInfo =
        _$_GameStoreActionController.startAction(name: '_GameStore.makeMove');
    try {
      return super.makeMove(index);
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTurn() {
    final _$actionInfo =
        _$_GameStoreActionController.startAction(name: '_GameStore.updateTurn');
    try {
      return super.updateTurn();
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _checkWinner() {
    final _$actionInfo = _$_GameStoreActionController.startAction(
        name: '_GameStore._checkWinner');
    try {
      return super._checkWinner();
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetGame() {
    final _$actionInfo =
        _$_GameStoreActionController.startAction(name: '_GameStore.resetGame');
    try {
      return super.resetGame();
    } finally {
      _$_GameStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
displayElement: ${displayElement},
xTurn: ${xTurn},
filledBoxes: ${filledBoxes},
winner: ${winner}
    ''';
  }
}
