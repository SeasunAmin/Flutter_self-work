import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    home: SwichTile(),
    theme: ThemeData(
      primaryColor: Colors.tealAccent,
    ),
  ));
}

class SwichTile extends StatefulWidget {
  const SwichTile({Key? key}) : super(key: key);

  @override
  _SwichTileState createState() => _SwichTileState();
}

class _SwichTileState extends State<SwichTile> {
  bool val = false;

  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SwitchListTile(
            value: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
              print(value);
            },
            inactiveThumbColor: Colors.blue,
            title: Text("Gaming"),
            subtitle: Text("Tern om to play games"),
            secondary: Icon(
              Icons.games,
              color: Colors.purpleAccent,
              size: 30,
            ),
          ),
          SwitchListTile(
            value: val2,
            onChanged: (value) {
              setState(() {
                val2 = value;
              });
              print(value);
            },
            inactiveThumbColor: Colors.blue,
            title: Text("Movie"),
            subtitle: Text("Tern om to watch"),
            secondary: Icon(
              Icons.movie,
              color: Colors.brown,
              size: 30,
            ),
          ),
          SwitchListTile(
            value: val3,
            onChanged: (value) {
              setState(() {
                val3 = value;
              });
              print(value);
            },
            inactiveThumbColor: Colors.blue,
            title: Text("Music"),
            subtitle: Text("Tern om to leasten"),
            secondary: Icon(
              Icons.music_note,
              color: Colors.green,
              size: 30,
            ),
          ),
          SwitchListTile(
            value: val4,
            onChanged: (value) {
              setState(() {
                val4 = value;
              });
              print(value);
            },
            inactiveThumbColor: Colors.blue,
            title: Text("Book"),
            subtitle: Text("Tern om to read"),
            secondary: Icon(
              Icons.book,
              color: Colors.red,
              size: 30,
            ),
          ),
          SwitchListTile(
            value: val5,
            onChanged: (value) {
              setState(() {
                val5 = value;
              });
              print(value);
            },
            inactiveThumbColor: Colors.blue,
            title: Text("Web Show"),
            subtitle: Text("Tern om to watch"),
            secondary: Icon(
              Icons.tv_rounded,
              color: Colors.blueAccent,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
