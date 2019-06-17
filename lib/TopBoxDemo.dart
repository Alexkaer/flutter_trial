import 'package:flutter/material.dart';

class TopBoxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TopBoxState();
  }
}

class TopBoxState extends State<TopBoxA> {
  bool flag = true;
  Color _color = Colors.green;
  String _text = 'Active';

  void _onClick() {
    setState(() {
      if (flag) {
        _color = Colors.green;
        _text = 'Active';
        flag = false;
      } else {
        _color = Colors.grey;
        _text = 'Inactive';
        flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _onClick,
      child: new Container(
        width: 100,
        height: 100,
        color: _color,
        child: Center(
            child: new Text(
          _text,
          style: new TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('Topbox a'),
      ),
      body: Center(child: new TopBoxA()),
    ),
  ));
}
