import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    home: ToolT(),
    theme: ThemeData(primaryColor: Colors.teal),
  ));
}

class ToolT extends StatefulWidget {
  const ToolT({Key? key}) : super(key: key);

  @override
  _ToolTState createState() => _ToolTState();
}

class _ToolTState extends State<ToolT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Tooltip(
                message: "my home",
                child: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.pink,
                )),
            Tooltip(
                message: "my car",
                child: Icon(
                  Icons.car_repair,
                  size: 40,
                  color: Colors.purple,
                )),
            Tooltip(
                message: "my lab",
                child: Icon(
                  Icons.biotech,
                  size: 40,
                  color: Colors.blue,
                )),
            Tooltip(
                message: "my bick",
                child: Icon(
                  Icons.bike_scooter,
                  size: 40,
                  color: Colors.pink,
                )),
          ],
        ),
      ),
    );
  }
}
