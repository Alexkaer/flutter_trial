import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

Future<Post> fetchPost() async {
  final response =
      await new Dio().get('https://jsonplaceholder.typicode.com/posts/1');
  print(response.toString());
  final responseJson = json.decode(response.toString());

  return new Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fetch Data Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Fetch Data Example',
            textDirection: TextDirection.ltr,
          ),
        ),
        body: new Center(
          child: new FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data.title);
                return new Text("${snapshot.data.title}",
                    textDirection: TextDirection.ltr);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}",
                    textDirection: TextDirection.ltr);
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
