import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alert page'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return AlertDialog(
                title: Text('Nicolas es marico'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('esta monda'),
                    FlutterLogo(
                      size: 90.0,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('calcelar')),
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('ok'))
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 253, 9, 9),
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(20)),
        child: const Text(
          'alerta caremonda',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      )),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add_location),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
    );
  }

  // _mostrarAlert(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: true,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text('Nicolas es marico'),
  //         content: Text('este es otra vaina'),
  //       );
  //     },
  //   );
  // }
}
