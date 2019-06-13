import 'package:flutter/material.dart';

class TODOList extends StatelessWidget {
  final items = List<ToDo>.generate(
      100, (index) => new ToDo("title $index", "this is a des of todo $index"));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TODOList'),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return new ListTile(
              title: new Text(item.title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ToDoDes(item)));
              },
            );
          }),
    );
  }
}

class ToDoDes extends StatelessWidget {
  final ToDo item;

  ToDoDes(this.item);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(item.title)),
      body: Center(
        child: new Text(item.des),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TODOList(),
    );
  }
}

void main() {
  runApp(new MyApp());
}

class ToDo {
  final String title;
  final String des;

  ToDo(this.title, this.des);
}
