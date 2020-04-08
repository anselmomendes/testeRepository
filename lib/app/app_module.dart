import 'package:assistencia/app/app_controller.dart';
import 'package:assistencia/app/app_widget.dart';
import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:assistencia/app/modules/cell/cell_module.dart';
import 'package:assistencia/app/modules/cell/cell_repository.dart';
import 'package:assistencia/app/modules/home/home_controller.dart';
import 'package:assistencia/app/modules/home/home_module.dart';
import 'package:assistencia/app/modules/services/services_controller.dart';
import 'package:assistencia/app/modules/services/services_module.dart';
import 'package:assistencia/app/modules/services/services_repository.dart';
import 'package:assistencia/app/utils/Constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/clientes/clientes_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
        Bind((i) => CellController(repository: i.get<CellRepository>())),
        Bind((i) => ServicesRepository(dio: i.get<Dio>())),
        Bind(
            (i) => ServicesController(repository: i.get<ServicesRepository>())),
        Bind((i) => CellRepository(dio: i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: ServicesModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
