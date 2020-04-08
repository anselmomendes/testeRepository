import 'package:assistencia/app/models/CellPhones.dart';
import 'package:assistencia/app/models/Clientes.dart';
import 'package:assistencia/app/models/Services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class ServicesRepository extends Disposable {
  final Dio dio;

  ServicesRepository({@required this.dio});

  Future<List<Services>> allServices() async {
    var response = await dio.get('/clientes');
    List<Services> list = List<Services>();
    for (var item in (response.data as List)) {
      Services model = Services(
          id: item['id'],
          nome: item['Nome'],
          descricao: item['Descricao'],
          celular: CellPhones(),
          cliente: Clientes());
      list.add(model);
    }
    return list;
  }

  Future<List<Services>> thisServices(int id) async {
    var response = await dio.get('/clientes');
    List<Services> list = List<Services>();
    for (var item in (response.data as List)) {
      if (id == item['id']) {
        Services model = Services(
            id: item['id'],
            nome: item['Nome'],
            descricao: item['Descricao'],
            celular: CellPhones(),
            cliente: Clientes());
        list.add(model);
      }
    }
    return list;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
