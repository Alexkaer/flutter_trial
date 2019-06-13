import 'package:flutter/material.dart';

class GoSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('select '),
      ),
      body: Center(
        child: new SelectBtn(),
      ),
    );
  }
}

class SelectBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        child: new Text("go to select"),
        onPressed: () {
          _startNavigator(context);
        });
  }

  void _startNavigator(BuildContext context) async {
    final result = await Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new Choices()));
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(result)));
  }
}

class Choices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('choices'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result
                  Navigator.pop(context, 'Yep!');
                },
                child: new Text('Yep!'),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: () {
                  // Close the screen and return "Nope!" as the result
                  Navigator.pop(context, 'Nope.');
                },
                child: new Text('Nope.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new GoSelect(),
  ));
}
