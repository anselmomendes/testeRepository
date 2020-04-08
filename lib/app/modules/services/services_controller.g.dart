// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServicesController on _ServicesBase, Store {
  final _$servicosAtom = Atom(name: '_ServicesBase.servicos');

  @override
  ObservableFuture<dynamic> get servicos {
    _$servicosAtom.context.enforceReadPolicy(_$servicosAtom);
    _$servicosAtom.reportObserved();
    return super.servicos;
  }

  @override
  set servicos(ObservableFuture<dynamic> value) {
    _$servicosAtom.context.conditionallyRunInAction(() {
      super.servicos = value;
      _$servicosAtom.reportChanged();
    }, _$servicosAtom, name: '${_$servicosAtom.name}_set');
  }

  final _$_ServicesBaseActionController =
      ActionController(name: '_ServicesBase');

  @override
  dynamic buscaCelular() {
    final _$actionInfo = _$_ServicesBaseActionController.startAction();
    try {
      return super.buscaCelular();
    } finally {
      _$_ServicesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'servicos: ${servicos.toString()}';
    return '{$string}';
  }
}
