import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.amber),
    home: Rich(),
  ));
}

class Rich extends StatefulWidget {
  const Rich({Key? key}) : super(key: key);

  @override
  _RichState createState() => _RichState();
}

class _RichState extends State<Rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
          child: Center(
            child: RichText(
        text: TextSpan(
              text: "Don't have any account?",
              style: TextStyle(fontSize: 16, color: Colors.black),
              children: [
                TextSpan(
                  text: "Signup",style: TextStyle(fontSize: 18,color: Colors.red)
                )
              ]
              
        ),
        
      ),
          )),
    );
  }
}
