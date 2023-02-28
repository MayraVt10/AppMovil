import 'package:flutter/material.dart';

import 'login_page.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAREAS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: loginPage.id,
      routes: {
        loginPage.id: (context) => loginPage(),
      },
    );
  }
}
