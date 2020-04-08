import 'package:assistencia/app/models/CellPhones.dart';
import 'package:assistencia/app/models/Clientes.dart';

class Services {
  int id;
  String nome;
  String descricao;
  CellPhones celular;
  Clientes cliente;

  Services({this.id, this.nome, this.descricao, this.celular, this.cliente});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['Nome'];
    descricao = json['Descricao'];
    celular = CellPhones.fromJson(json['celular']);
    cliente = Clientes.fromJson(json['cliente']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Nome'] = this.nome;
    data['Descricao'] = this.descricao;
    if (this.celular != null) {
      data['celular'] = this.celular.toJson();
    }
    if (this.cliente != null) {
      data['cliente'] = this.cliente.toJson();
    }
    return data;
  }
}
