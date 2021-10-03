import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "pop",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: Popup()));
}

class Popup extends StatefulWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Container(),
    );
  }
}
