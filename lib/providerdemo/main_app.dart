import 'package:flutter/material.dart';
import 'counter_model.dart';
import 'package:provider/provider.dart';
import 'first_screen.dart';

void main() {
  final countModel = Counter();
  final textSize = 48;
//  runApp(Provider<int>.value(
//    value: textSize,
//    child: ChangeNotifierProvider<Counter>.value(
//      value: countModel,
//      child: MyApp(),
//    ),
//  ));
  runApp(MultiProvider(
    providers: [
      Provider<int>.value(value: textSize),
      ChangeNotifierProvider<Counter>.value(value: countModel)
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: FirstScreen(),
    );
  }
}
