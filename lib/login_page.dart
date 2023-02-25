import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(children: [Image.asset('imagenes/tareas_icono.png')]),
        ),
      ),
    );
  }
}
