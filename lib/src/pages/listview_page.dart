import 'dart:async';

import 'package:flutter/material.dart';

class ListViewsPage extends StatefulWidget {
  const ListViewsPage({super.key});

  @override
  State<ListViewsPage> createState() => _ListViewsPageState();
}

class _ListViewsPageState extends State<ListViewsPage> {
  ScrollController _controladorScrol = ScrollController();
  List<int> _numberList = [];
  int _ultimoNumero = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar10();

    _controladorScrol.addListener(() {
      // print('object');
      if (_controladorScrol.position.pixels ==
          _controladorScrol.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

  @override
  void dispose() {
    // este metodo es para limpiar el estado del apk
    // TODO: implement dispose
    super.dispose();
    _controladorScrol.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViews'),
      ),
      body: Stack(
        children: [
          _crearLista(),
        ],
      ),
    );
  }

  _crearLista() {
    return RefreshIndicator(
      child: ListView.builder(
        controller: _controladorScrol,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
          // print('esta es la cosa epoxica');
          // print(image);
          return FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.BcNb40Mq_PfOj795lDFqaAHaFV?pid=ImgDet&rs=$image'));
        },
        itemCount: _numberList.length,
      ),
      onRefresh: obtenerPagina1,
    );
  }

  Future obtenerPagina1() async {
    final duration = Duration(seconds: 2);
    await Timer(duration, () {
      _numberList.clear();
      _ultimoNumero++;
      _agregar10();
    });

    return Future.delayed(duration);
  }

  _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoNumero++;
      _numberList.add(_ultimoNumero);
    }
    setState(() {});
  }

  _crearLoading() {}
}
