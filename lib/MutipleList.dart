import 'package:flutter/material.dart';

abstract class ListItem {}

class HeadItem implements ListItem {
  final String heading;

  HeadItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class MutipleListView extends StatelessWidget {
  final title = 'Mutiple ListView';
  final List<ListItem> items;

  MutipleListView(this.items);

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
              final item = items[index];
              if (item is HeadItem) {
                return new ListTile(
                  title: new Text(
                    item.heading,
                    style: Theme.of(context).textTheme.headline,
                  ),
                );
              } else if (item is MessageItem) {
                return new ListTile(
                  title: new Text(item.sender),
                  subtitle: new Text(item.body),
                );
              } else {
                return new ListTile(
                  title: new Text(
                    'other',
                    style: Theme.of(context).textTheme.headline,
                  ),
                );
              }
            }),
      ),
    );
  }
}

void main() {
  final items = new List<ListItem>.generate(
      100,
      (i) => i % 6 == 0
          ? new HeadItem("Heading $i")
          : new MessageItem("Sender $i", "Message body $i"));
  runApp(new MutipleListView(items));
}
