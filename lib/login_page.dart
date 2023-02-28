import 'package:app_movil1/src/listado.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image.asset(
                  'imagenes/tareas_icono.png',
                  height: 300.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 25.0,
              ),
              _buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email, color: Colors.blue),
                hintText: 'ejemplo@correo.com',
                labelText: 'Correo electrónico',
              ),
              onChanged: (value) {}));
    });
  }

  _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.blue),
                hintText: 'Contraseña',
                labelText: 'Cotraseña',
              ),
              onChanged: (value) {}));
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      var roundedRectangleBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      );
      var roundedRectangleBorder2 = roundedRectangleBorder;
      return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text('Iniciar sesión'),
        ),
        onPressed: () {
          print('Hola');
          initialRoute:
          listadoPage.nombrePagina;
          routes:
          {
            listadoPage.nombrePagina;
            (BuildContext context) => listadoPage();
          }
          ;
          //home : listadoPage()
        },
      );
    });
  }
}
