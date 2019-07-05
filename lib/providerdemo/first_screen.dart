import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fontSize = Provider.of<int>(context).toDouble();
    final countModel = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Text(
          'value = ${countModel.count}',
          style: TextStyle(fontSize: fontSize),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SecondScreen();
          }));
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}
