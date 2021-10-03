import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stack",
    home: StackPage(),
  ));
}

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          //alignment: Alignment.bottomLeft,
          overflow: Overflow.visible,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.redAccent,
            ),
            Positioned(
              bottom: -25,
              left: -50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
