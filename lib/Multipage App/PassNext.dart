import 'package:flutter/material.dart';

class PassDataNext extends StatefulWidget {
  var m;
  PassDataNext(this.m);

  @override
  _PassDataNextState createState() => _PassDataNextState(this.m);
}

class _PassDataNextState extends State<PassDataNext> {
  var m;
  _PassDataNextState(this.m);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Next page"),
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Center(
            child: Text(m),
          ),
          RaisedButton(
            child: Text("Previus"),
            color: Colors.pinkAccent,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
