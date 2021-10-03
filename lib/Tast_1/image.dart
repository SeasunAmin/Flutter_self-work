import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Ima(),
  ));
}
class Ima extends StatelessWidget {
  const Ima({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image.network("https://www.istockphoto.com/photo/abstract-futuristic-with-connection-lines-on-blue-background-plexus-structure-gm1285395672-382242952?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Flink&utm_term=link%3A%3Asearch-aggressive-affiliates-v1%3Ab")),
      ),
    );
  }
}