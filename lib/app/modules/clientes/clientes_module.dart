import 'package:assistencia/app/modules/clientes/clientes_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:assistencia/app/modules/clientes/clientes_page.dart';

class ClientesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ClientesController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ClientesPage()),
      ];

  static Inject get to => Inject<ClientesModule>.of();
}
