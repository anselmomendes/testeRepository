import 'package:mobx/mobx.dart';

part 'clientes_controller.g.dart';

class ClientesController = _ClientesBase with _$ClientesController;

abstract class _ClientesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
