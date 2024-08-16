// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on _GameStore, Store {
  Computed<List<String>>? _$boardComputed;

  @override
  List<String> get board => (_$boardComputed ??=
          Computed<List<String>>(() => super.board, name: '_GameStore.board'))
      .value;

  late final _$displayElementAtom =
      Atom(name: '_GameStore.displayElement', context: context);

  @override
  List<String> get displayElement {
    _$displayElementAtom.reportRead();
    return super.displayElement;
  }

  @override
  set displayElement(List<String> value) {
    _$displayElementAtom.reportWrite(value, super.displayElement, () {
      super.displayElement = value;
    });
  }

  late final _$oTurnAtom = Atom(name: '_GameStore.oTurn', context: context);

  @override
  bool get oTurn {
    _$oTurnAtom.reportRead();
    return super.oTurn;
  }

  @override
  set oTurn(bool value) {
    _$oTurnAtom.reportWrite(value, super.oTurn, () {
      super.oTurn = value;
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
  String toString() {
    return '''
displayElement: ${displayElement},
oTurn: ${oTurn},
filledBoxes: ${filledBoxes},
board: ${board}
    ''';
  }
}
