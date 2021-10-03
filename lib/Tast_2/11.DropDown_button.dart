import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.red,
    ),
    home: Drop(),
  ));
}

class Drop extends StatefulWidget {
  const Drop({Key? key}) : super(key: key);

  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  var selected ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My hometown is",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            
          ),
          Text("$selected",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            
          ),
          SizedBox(height: 20,),
          Center(
            child: DropdownButton(
              hint: Text("Select hometown"),
              iconSize: 50,
              iconEnabledColor: Colors.blue,
              items: [
                DropdownMenuItem(
                  value: "Dhaka",
                  child: Text("Dhaka"),
                ),
                DropdownMenuItem(
                  value: "Khulna",
                  child: Text("Khulna"),
                ),
                DropdownMenuItem(
                  value: "barisal",
                  child: Text("Barisal"),
                ),
                DropdownMenuItem(
                  value: "Rajshahi",
                  child: Text("Rajshahi"),
                ),
              ],
              onChanged: (val) {
                setState(() {
                  selected = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
