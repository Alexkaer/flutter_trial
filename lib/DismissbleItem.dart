import 'package:flutter/material.dart';

class MyDismissable extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Dismissable Demo'),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                key: new Key(item),
                child: new ListTile(title: new Text('$item')),
                onDismissed: (direction) {
                  items.removeAt(index);

                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                background: new Container(
                  color: Colors.red,
                ),
              );
            }),
      ),
    );
  }
}

void main() {
  runApp(new MyDismissable());
}
