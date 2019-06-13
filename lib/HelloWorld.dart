import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new Text(
        'Hello, world! My name is Minson. Welcome to China! Nice to meet you...',
        textAlign: TextAlign.center,
        overflow: TextOverflow.fade,
        style: TextStyle(fontWeight: FontWeight.bold),
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}