import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ListTile",
    home: List_Tile(),
  ));
}

class List_Tile extends StatefulWidget {
  const List_Tile({Key? key}) : super(key: key);

  @override
  _List_TileState createState() => _List_TileState();
}

class _List_TileState extends State<List_Tile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text("Boss 1"),
              subtitle: Text("ios Developer"),
              trailing: Icon(Icons.arrow_forward),
              leading: CircleAvatar(
                backgroundColor: Colors.cyanAccent,
                child: Text("B"),
              )),
          ListTile(
            title: Text("Boss 2"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 3"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 4"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 5"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 6"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 7"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
          ListTile(
            title: Text("Boss 8"),
            trailing: Icon(Icons.arrow_forward),
            leading: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amberAccent),
            ),
          ),
        ],
      ),
    );
  }
}
