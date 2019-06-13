import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Counter',
    home: new MyCounter(),
  ));
}

class MyCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CounterState();
  }
}

class CounterState extends State<MyCounter> {
  int _count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _increase() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increase,
          child: new Text("increment"),
        ),
        new Text("count:$_count")
      ],
    );
  }
}
