import 'package:flutter/material.dart';

void main() {
  final items = new List<String>.generate(100, (i) => "item $i");
  runApp(new LongListView(items));
}

class LongListView extends StatelessWidget {
  final title = 'long list demo';
  final List<String> items;

  LongListView(this.items);

//  LongListView({@required this.items, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text(items[index]),
                leading: new Icon(Icons.add),
              );
            }),
      ),
    );
  }
}
