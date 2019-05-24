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
      floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _substraer,
        ),
        SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }

  void _increment() {
    setState(() => this._count++);
  }

  void _substraer() {
    setState(() => _count-- );
  }

  void _reset() {
    setState(() => _count = 0);
  }
}