import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('avatar page'),
        actions: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: CircleAvatar(
              child: Text('LR'),
              backgroundColor: Color.fromARGB(255, 235, 30, 15),
            ),
          )
        ],
      ),
    );
  }
}
