import 'package:flutter/material.dart';

class TopBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TopBoxB(this.active, this.onChanged);

  void _onClick() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _onClick,
      child: new Container(
        color: active ? Colors.green : Colors.grey,
        child: new Text(active ? 'active' : 'inactive'),
      ),
    );
  }
}

class TopBoxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TopBoxAState();
  }
}

class TopBoxAState extends State<TopBoxA> {
  bool active = true;

  void _onChange(bool newValue) {
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new TopBoxB(active, _onChange);
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('aaa'),
      ),
      body: new TopBoxA(),
    ),
  ));
}
