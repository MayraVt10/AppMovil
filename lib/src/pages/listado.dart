import 'package:app_movil1/src/pages/detalle.dart';
import 'package:app_movil1/src/pages/formulario.dart';
import 'package:app_movil1/src/providers/tareas_provider.dart';
import 'package:flutter/material.dart';

class listadoPage extends StatefulWidget {
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
  State<listadoPage> createState() => _listadoPageState();
}

class _listadoPageState extends State<listadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LISTADO'),
        ),
        body: (TareasProvider().tareas.isNotEmpty)
            ? ListView(children: _crearItem(context))
            : Center(
                child: Text('No hay tareas'),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.pushNamed(context, formularioPage.nombrePagina),
          child: Icon(Icons.add),
        ));
  }

  List<Widget> _crearItem(BuildContext context) {
    List<Widget> temporal = [];
    for (Map<String, dynamic> tarea in TareasProvider().tareas) {
      Widget item = ListTile(
          title: Text("${tarea['nombre']}"),
          subtitle: Text("${tarea['fecha']} \n ${tarea['estado']}"),
          trailing: (tarea['estado'] == 'pendiente'
              ? Icon(Icons.star)
              : Icon(Icons.star_border)),
          leading: Icon(Icons.account_balance_wallet),
          //trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () => Navigator.pushNamed(context, DetallePage.nombrePagina,
              arguments: tarea));

      temporal.add(item);
    }
    return temporal;
  }
}
