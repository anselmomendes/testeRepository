import 'package:assistencia/app/models/CellPhones.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CellRepository {
  final Dio dio;

  CellRepository({@required this.dio});

  Future<List<CellPhones>> allCellPhone() async {
    var response = await dio.get('/celulares');
    List<CellPhones> list = List<CellPhones>();
    for (var item in (response.data as List)) {
      CellPhones model = CellPhones(
          id: item['id'], marca: item['Marca'], modelo: item['Modelo']);
      list.add(model);
    }
    return list;
  }

  Future<List<CellPhones>> thisCellPhone(int id) async {
    var response = await dio.get('/celulares');
    List<CellPhones> list = List<CellPhones>();
    for (var item in (response.data as List)) {
      if (id == item['id']) {
        CellPhones model = CellPhones(
            id: item['id'], marca: item['Marca'], modelo: item['Modelo']);
        list.add(model);
      }
    }
    return list;
  }
}
