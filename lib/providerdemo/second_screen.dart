import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Consumer2<Counter, int>(
          builder: (BuildContext context, Counter count, int textSize, _) {
        return Center(
          child: Text(
            count.count.toString(),
            style: TextStyle(
              fontSize: textSize.toDouble(),
            ),
          ),
        );
      }),
      floatingActionButton: Consumer<Counter>(
        builder: (context, Counter count, child) {
          return FloatingActionButton(
            onPressed: () => count.increment(),
            child: child,
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
