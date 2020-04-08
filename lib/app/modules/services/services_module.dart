import 'package:assistencia/app/modules/services/services_repository.dart';
import 'package:assistencia/app/modules/services/services_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:assistencia/app/modules/services/services_page.dart';

class ServicesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ServicesRepository(dio: i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/services', child: (_, args) => ServicesPage()),
      ];

  static Inject get to => Inject<ServicesModule>.of();
}
