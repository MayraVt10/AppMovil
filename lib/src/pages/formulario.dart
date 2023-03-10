import 'package:app_movil1/src/pages/listado.dart';
import 'package:app_movil1/src/providers/tareas_provider.dart';
import 'package:flutter/material.dart';

class formularioPage extends StatefulWidget {
  formularioPage({super.key});
  static final nombrePagina = "formulario";
  _formularioPageState createState() => _formularioPageState();
}

Map<String, dynamic> tarea = {};

class _formularioPageState extends State<formularioPage> {
  final idForm = GlobalKey<FormState>();

  Map<String, dynamic> nuevaTarea = {};
  @override
  Widget build(BuildContext context) {
    tarea = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text('FORMULARIO'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(25.0),
          child: Form(
            key: idForm,
            child: Column(
              children: <Widget>[
                _crearInputNombre(),
                _crearInputFecha(),
                _crearBotonAgregar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _crearInputNombre() {
    return TextFormField(
      initialValue: (tarea != null) ? tarea['nombre'] : "",
      onSaved: (value) {
        nuevaTarea['nombre'] = value;
      },
      decoration: InputDecoration(
        hintText: "Nombre de la tarea",
        labelText: 'Nombre',
      ),
    );
  }

  _crearInputFecha() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: TextFormField(
        initialValue: (tarea != null) ? tarea['fecha'] : "",
        onSaved: (value) {
          nuevaTarea['fecha'] = value;
        },
        //maxLines: 3
        decoration: InputDecoration(
          hintText: "fecha de la tarea",
          labelText: 'Fecha',
        ),
      ),
    );
  }

  _crearBotonAgregar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80.0),
      child: ElevatedButton(
        onPressed: () {
          idForm.currentState!.save();
          nuevaTarea['estado'] = 'pendiente';

          if (tarea != null) {
            TareasProvider().editarTarea(nuevaTarea, tarea);
            Navigator.popUntil(
                context, ModalRoute.withName(listadoPage.nombrePagina));
          } else {
            TareasProvider().agregarTarea(nuevaTarea);
            Navigator.pop(context);
          }
        },
        child: (tarea != null) ? Text("EDITAR TAREA") : Text('CREAR TAREA'),
      ),
    );
  }
}
