import 'package:assistencia/app/modules/services/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class ServicesPage extends StatefulWidget {
  final String title;
  const ServicesPage({Key key, this.title = "Services"}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final _servicesController = Modular.get<ServicesController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (_) {
            if (_servicesController.servicos.value == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var list = _servicesController.servicos.value;

              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(list[index].nome.toString(),
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(list[index].descricao.toString()),
                    leading: Icon(
                      Icons.phone_iphone,
                      color: Colors.blue[500],
                    ),
                  );
                },
              );
            }
          })
        ],
      ),
    );
  }
}
