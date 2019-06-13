import 'package:flutter/material.dart';

class GridViewApp extends StatelessWidget {
  final title = 'gridview demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new GridView.count(
            crossAxisCount: 3,
            children: new List<Widget>.generate(100, (i) {
              return Center(
                  child: new Text('item $i',
                      style: Theme.of(context).textTheme.headline));
            })),
      ),
    );
  }
}
void main(){
  runApp(new GridViewApp());
}