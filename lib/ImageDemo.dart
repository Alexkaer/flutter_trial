import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main(){
  runApp(new ImageWeget());
}

class ImageWeget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            Center(child: new CircularProgressIndicator()),
            Center(
                child: new FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://cdn.pixabay.com/photo/2019/06/02/00/46/chapel-4245437__480.jpg'))
          ],
        ),
      ),
    );
  }
}
