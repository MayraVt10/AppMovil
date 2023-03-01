import 'package:app_movil1/src/pages/formulario.dart';
import 'package:app_movil1/src/providers/tareas_provider.dart';
import 'package:flutter/material.dart';

class listadoPage extends StatelessWidget {
  const listadoPage({super.key});

  static final nombrePagina = "listado";
  static final List<Map<String, dynamic>> tareas = [
    {
      'nombre': "Tarea 1",
      'fecha': "fecha1",
      'estado': 'pendiente',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LISTADO'),
        ),
        body: (TareasProvider().tareas.isNotEmpty)
            ? ListView(children: _crearItem())
            : Center(
                child: Text('No hay tareas'),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.pushNamed(context, formularioPage.nombrePagina),
          child: Icon(Icons.add),
        ));
  }

  List<Widget> _crearItem() {
    List<Widget> temporal = [];
    for (Map<String, dynamic> tarea in TareasProvider().tareas) {
      Widget item = ListTile(
        title: Text("${tarea['nombre']}"),
        subtitle: Text("${tarea['estado']}"),
        trailing: (tarea['estado'] == 'pendiente'
            ? Icon(Icons.star)
            : Icon(Icons.star_border)),
        leading: Icon(Icons.account_balance_wallet),
        //trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );

      temporal.add(item);
    }
    return temporal;
  }
}
