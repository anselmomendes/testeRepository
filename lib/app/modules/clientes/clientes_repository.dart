import 'package:assistencia/app/models/Clientes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class ClientesRepository extends Disposable {
  final Dio dio;

  ClientesRepository({@required this.dio});

  Future<List<Clientes>> allClientes() async {
    var response = await dio.get('/clientes');
    List<Clientes> list = List<Clientes>();
    for (var item in (response.data as List)) {
      Clientes model = Clientes(
          id: item['id'],
          nome: item['Nome'],
          sobrenome: item['Sobrenome'],
          cpf: item['Cpf'],
          telefone: item['Telefone']);
      list.add(model);
    }
    return list;
  }

  Future<List<Clientes>> thisCliente(int id) async {
    var response = await dio.get('/clientes');
    List<Clientes> list = List<Clientes>();
    for (var item in (response.data as List)) {
      if (id == item['id']) {
        Clientes model = Clientes(
            id: item['id'],
            nome: item['Nome'],
            sobrenome: item['Sobrenome'],
            cpf: item['Cpf'],
            telefone: item['Telefone']);
        list.add(model);
      }
    }
    return list;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
