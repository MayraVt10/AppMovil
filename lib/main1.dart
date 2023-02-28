import 'package:flutter/material.dart';
import 'package:app_movil1/src/listado.dart';

void main1() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listado',
      initialRoute: listadoPage.nombrePagina,
      routes: {
        listadoPage.nombrePagina: (BuildContext context) => listadoPage(),
      },
    );
  }
}
