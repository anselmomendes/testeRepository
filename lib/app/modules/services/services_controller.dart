import 'package:assistencia/app/modules/services/services_repository.dart';
import 'package:mobx/mobx.dart';

part 'services_controller.g.dart';

class ServicesController = _ServicesBase with _$ServicesController;

abstract class _ServicesBase with Store {
  final ServicesRepository repository;

  @observable
  ObservableFuture servicos;

  _ServicesBase({this.repository}) {
    buscaServicos();
  }

  @action
  buscaServicos() {
    servicos = repository.allServices().asObservable();
  }
}
