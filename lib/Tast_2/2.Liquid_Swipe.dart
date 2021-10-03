import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.tealAccent,
    ),
    home: Liquid(),
  ));
}

class Liquid extends StatelessWidget {
  const Liquid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final page = [
      Container(color: Colors.orange),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.redAccent,
      ),
      Container(color: Colors.amber),
      Container(
        color: Colors.deepPurple,
      )
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: LiquidSwipe(pages: page),
        ));
  }
}
