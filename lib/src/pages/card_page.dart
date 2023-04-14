import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('card Page'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
            const SizedBox(height: 20.0),
            _cardTipe2(),
            _cardTipe1(),
          ],
        ));
  }

  _cardTipe1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album, color: Colors.red),
          title: Text('este es el titulo de la c arta'),
          subtitle: Text('esta es la ide de lo que se hace'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('ok'),
            ),
            TextButton(onPressed: () {}, child: const Text('calcelar'))
          ],
        )
      ]),
    );
  }

  _cardTipe2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // shape: ,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://th.bing.com/th?id=OIP.M6muSvfZYou9VsZpaOOxywHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
          // ),
          // const Image(
          //   image: NetworkImage(
          //       'https://th.bing.com/th?id=OIP.M6muSvfZYou9VsZpaOOxywHaEK&w=333&h=187&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
          // ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('la casa del luismi en verkahy'),
          )
        ],
      ),
    );
  }
}
