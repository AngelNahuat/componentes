import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listaNum = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNum[index];
        return FadeInImage(
            placeholder: AssetImage('assets/cargando.gif'),
            image: NetworkImage('https://picsum.photos/500/300?image=$imagen'));
      },
      itemCount: _listaNum.length,
    );
  }
}
