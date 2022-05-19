// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_drawer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyDrawerStore on _MyDrawerStoreBase, Store {
  late final _$selectedAtom =
      Atom(name: '_MyDrawerStoreBase.selected', context: context);

  @override
  int get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(int value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  late final _$_MyDrawerStoreBaseActionController =
      ActionController(name: '_MyDrawerStoreBase', context: context);

  @override
  void setSelected(int value) {
    final _$actionInfo = _$_MyDrawerStoreBaseActionController.startAction(
        name: '_MyDrawerStoreBase.setSelected');
    try {
      return super.setSelected(value);
    } finally {
      _$_MyDrawerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
