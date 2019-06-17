import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FavouriteState();
  }
}

class FavouriteState extends State<FavouriteWidget> {
  bool _isFavourite = true;
  int _favouriteCount = 41;

  void _toggleFavourite() {
    setState(() {
      if (_isFavourite) {
        _isFavourite = false;
        _favouriteCount -= 1;
      } else {
        _isFavourite = true;
        _favouriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new IconButton(
            icon: (_isFavourite
                ? new Icon(Icons.star)
                : new Icon(Icons.star_border)),
            color: Colors.red,
            onPressed: _toggleFavourite),
        new Text('$_favouriteCount'),
      ],
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('stateful demo'),
      ),
      body: Center(child: new FavouriteWidget()),
    ),
  ));
}
