import 'package:assistencia/app/modules/cell/cell_repository.dart';
import 'package:mobx/mobx.dart';

part 'cell_controller.g.dart';

class CellController = _CellBase with _$CellController;

abstract class _CellBase with Store {
  final CellRepository repository;

  @observable
  int value = 0;

  _CellBase({this.repository});

  @action
  void increment() {
    value++;
  }
}
