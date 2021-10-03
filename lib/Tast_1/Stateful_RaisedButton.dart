import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    home: HomePage1(),
  ));
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  String txt = " Guta mar por dek ki hoy..";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(fontSize: 16),
              )),
            ),
            RaisedButton(
              child: Text("Tap Here"),
              onPressed: () {
                print("Buttor Clicked.");
                setState(() {
                  txt = " Seasun Bosss...";
                });
              },
            )
          ],
        ));
  }
}
