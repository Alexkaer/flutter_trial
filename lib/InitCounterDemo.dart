import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Counter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _count = 0;

  void clickPlus() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Counter'),
      ),
      body: Center(
        child: Container(
          child: Text(_count.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: clickPlus,
        child: Icon(Icons.add),
      ),
    );
  }
}
