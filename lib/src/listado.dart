import 'package:flutter/material.dart';

class listadoPage extends StatelessWidget {
  const listadoPage({super.key});

  static final nombrePagina = "listado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LISTADO'),
      ),
      body: ListView(
        children: _crearItem(),
      ),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> temporal = [];
    for (var i = 0; i < 5; i++) {
      Widget item = ListTile(
        title: Text('Tarea ${i + 1}'),
        subtitle: Text('Subtitulo $i'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );

      temporal.add(item);
    }
    return temporal;
  }
}
