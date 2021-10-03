import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tast_app/Multipage%20App/PassNext.dart';

void main() {
  runApp(MaterialApp(
    title: "Data passing",
    home: DataPass(),
    theme: ThemeData(primarySwatch: Colors.lime),
  ));
}

class DataPass extends StatefulWidget {
  const DataPass({Key? key}) : super(key: key);

  @override
  _DataPassState createState() => _DataPassState();
}

class _DataPassState extends State<DataPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
          child: Center(
        child: RaisedButton(
          child: Text("Next"),
          color: Colors.tealAccent,
          onPressed: () {
            String message = "Hello seasun";
            Route route =
                MaterialPageRoute(builder: (context) => PassDataNext(message));
            Navigator.push(context, route);
          },
        ),
      )),
    );
  }
}
