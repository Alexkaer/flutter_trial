import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator Demo'),
      ),
      body: new RaisedButton(
          child: new Text('go to second'),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SecondScreen()));
          }),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("second screen"),
      ),
      body: new RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: new Text('go back'),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(home: new FirstScreen()));
}
