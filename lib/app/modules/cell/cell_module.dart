import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:assistencia/app/modules/cell/cell_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CellModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CellController()),
      ];

  @override
  List<Router> get routers => [
        Router('/cellphone', child: (_, args) => CellPage()),
      ];

  static Inject get to => Inject<CellModule>.of();
}
