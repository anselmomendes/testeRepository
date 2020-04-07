class Clientes {
  int id;
  String nome;
  String sobrenome;
  String cpf;
  int telefone;

  Clientes({this.id, this.nome, this.sobrenome, this.cpf, this.telefone});

  Clientes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['Nome'];
    sobrenome = json['Sobrenome'];
    cpf = json['Cpf'];
    telefone = json['Telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Nome'] = this.nome;
    data['Sobrenome'] = this.sobrenome;
    data['Cpf'] = this.cpf;
    data['Telefone'] = this.telefone;
    return data;
  }
}
