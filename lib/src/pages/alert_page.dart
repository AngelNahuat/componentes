import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esta es la pagina de alerta "),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
