import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          ),
          TitleSelection(),
          BtbSelection(),
          Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius:
                    new BorderRadius.all(new Radius.elliptical(5, 10)),
                border: new Border.all(color: Colors.red, width: 0.5)),
            padding: const EdgeInsets.all(16.0),
            child: new Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          )
        ],
      ),
    ));
  }
}

class TitleSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              flex: 1,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Oeschinen Lake Campground",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black)),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                    child: new Text(
                      'Kandersteg, Switzerland',
                      style: new TextStyle(
                          color: Colors.grey, decoration: TextDecoration.none),
                    ),
                  ),
                ],
              )),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text(
            '42',
            style: new TextStyle(decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final String title;

  MyButton(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return new Column(
      children: <Widget>[
        new Icon(
          icon,
          color: color,
        ),
        new Text(
          title,
          style: new TextStyle(color: color),
        )
      ],
    );
  }
}

class BtbSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        MyButton(Icons.call, '电话'),
        MyButton(Icons.router, '路径'),
        MyButton(Icons.share, '分享'),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

void main() {
  runApp(new MyApp());
}
