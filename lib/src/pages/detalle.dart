import 'package:app_movil1/src/pages/formulario.dart';
import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({super.key});
  static final nombrePagina = "detalle";

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? tarea =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALLE'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text(
                "${tarea!['nombre']}",
                style: TextStyle(fontSize: 25.0),
              )),
          Text("Descripción: "),
          Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: Text("${tarea['fecha']}")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: Text("TERMINAR"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () => Navigator.pushNamed(
                    context, formularioPage.nombrePagina,
                    arguments: tarea),
                child: Text("EDITAR"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text("ELIMINAR"),
              )
            ],
          )
        ],
      ),
    );
  }
}
