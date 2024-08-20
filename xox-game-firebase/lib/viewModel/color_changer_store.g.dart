// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_changer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorChangerStore on _ColorChangerStore, Store {
  late final _$colorAtom =
      Atom(name: '_ColorChangerStore.color', context: context);

  @override
  Color get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$_ColorChangerStoreActionController =
      ActionController(name: '_ColorChangerStore', context: context);

  @override
  void changeColor() {
    final _$actionInfo = _$_ColorChangerStoreActionController.startAction(
        name: '_ColorChangerStore.changeColor');
    try {
      return super.changeColor();
    } finally {
      _$_ColorChangerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color}
    ''';
  }
}
