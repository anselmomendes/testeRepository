import 'package:flutter/material.dart';

class ClientesPage extends StatefulWidget {
  final String title;
  const ClientesPage({Key key, this.title = "Clientes"}) : super(key: key);

  @override
  _ClientesPageState createState() => _ClientesPageState();
}

class _ClientesPageState extends State<ClientesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
