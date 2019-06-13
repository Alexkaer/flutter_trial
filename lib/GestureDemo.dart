import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(content: new Text('snack bar'));
          Scaffold.of(context).showSnackBar(snackBar);
        },
        onLongPress: (){print("aaaa");},
        child: Container(
          child: new Text('my button'),
          padding: EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(8.0),
          ),
        ));
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('click'),
        ),
        body: new MyButton(),
      ),
    );
  }

}

void main(){
  runApp(new MyApp());
}
