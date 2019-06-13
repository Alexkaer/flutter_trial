import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyCachedImage());

class MyCachedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'cached images';

    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: Center(
          child: new CachedNetworkImage(
            imageUrl:
                'https://cdn.pixabay.com/photo/2016/08/01/20/34/girl-1562091__480.jpg',
          ),
        ),
      ),
    );
  }
}
