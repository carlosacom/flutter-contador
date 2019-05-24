import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final TextStyle styleText  = new TextStyle(fontSize: 24);
  final int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de Clicks: ',
              style: styleText,
            ),
            Text(
                "$count",
                style: styleText,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),  
        onPressed: () {
          print('hola mundo');

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}