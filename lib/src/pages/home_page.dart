import 'package:flutter/material.dart';
import 'package:second_flutter_app/src/pages/alert_page.dart';
import 'package:second_flutter_app/src/providers/meni_provider.dart';
import 'package:second_flutter_app/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], // es necesario este argumento para que se pueda esperar la respuesta del snapshop
      builder: (context, AsyncSnapshot snapshot) {
        // print('este es el tipo');
        // print(snapshot);
        return ListView(
          children: _listIteams(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listIteams(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);
        },
      );
      options.add(widgetTemp);
    });
    return options;
  }
}
