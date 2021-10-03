import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.amber),
    home: Ani(),
  ));
}

class Ani extends StatefulWidget {
  const Ani({Key? key}) : super(key: key);

  @override
  _AniState createState() => _AniState();
}

class _AniState extends State<Ani> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                color: Colors.teal,
                child: Center(
                    child: RaisedButton(
                  child: Text("Tap"),
                  onPressed: () {
                    setState(() {
                      check = false;
                    });
                  },
                )),
              ),
              secondChild: Center(
                  child: Text(
                "Seasun",
                style: TextStyle(fontSize: 26),
              )),
              crossFadeState:
                  check ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2))
        ],
      ),
    );
  }
}
