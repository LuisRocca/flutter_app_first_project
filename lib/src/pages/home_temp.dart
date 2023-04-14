import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({super.key});
  final option = ['uno', 'dos', 'tres', 'cuatro', 'te pongo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('este es desde home'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _creatItemaMap(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = <Widget>[];

  //   for (var opt in option) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista.add(tempWidget);
  //   }
  //   return lista;
  // }

  List<Widget> _creatItemaMap() {
    return option.map((e) {
      return Column(
        children: <Widget>[
          ListTile(
            // focusColor: Color.fromARGB(255, 185, 52, 19),
            title: Text(e),
            subtitle: Text('chupame el orto'),
            leading: const Icon(Icons.access_alarm_sharp),
            trailing: const Icon(Icons.safety_check),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
