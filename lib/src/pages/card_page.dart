import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text("Tarjeta titulo"),
          subtitle: Text("Holaaaaaaaaaaaaaa"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
            placeholder: AssetImage('assets/cargando.gif'),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text("nose"))
        ],
      ),
    );
  }
}
