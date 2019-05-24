import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageSate();
}

class _ContadorPageSate extends State<ContadorPage> {
  final TextStyle _styleText  = new TextStyle(fontSize: 24);
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de Clicks: ',
                style: _styleText,
              ),
              Text(
                "$_count",
                style: _styleText,
              ),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }

}