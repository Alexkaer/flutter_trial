import 'package:flutter/material.dart';

class MyWaveButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Wave button demo'),
        ),
        body: new MyBtn(),
      ),
    );
  }

}


class MyBtn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('i am snack bar')));
      },
      child: Center(
        child: new Text('Wave Button',style: Theme.of(context).textTheme.headline,),
      ),
    );
  }

}

void main() => runApp(new MyWaveButton());