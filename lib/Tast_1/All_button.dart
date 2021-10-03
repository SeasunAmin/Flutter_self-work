import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Seasun(),
  ));
}

class Seasun extends StatefulWidget {
  const Seasun({Key? key}) : super(key: key);

  @override
  _SeasunState createState() => _SeasunState();
}

class _SeasunState extends State<Seasun> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Count: $num",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            elevation: 10,
            child: Text(
              "Click Here",
              style: TextStyle(fontSize: 16),
            ),
            textColor: Colors.indigo,
            color: Colors.amber,
            onPressed: () {
              setState(() {
                num++;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              child: Text(
                "Click Here",
                style: TextStyle(fontSize: 16),
              ),
              textColor: Colors.indigo,
              color: Colors.pink,
              onPressed: () {
                setState(() {
                  num++;
                });
              }),
          SizedBox(
            height: 10,
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.green,
            onPressed: () {
              setState(() {
                num++;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.purple,
            //splashColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                num++;
              });
            },
          )
        ],
      ),
    );
  }
}
