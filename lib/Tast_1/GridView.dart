import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "GridView",
    home: Grid_View(),
  ));
}

class Grid_View extends StatefulWidget {
  const Grid_View({Key? key}) : super(key: key);

  @override
  _Grid_ViewState createState() => _Grid_ViewState();
}

class _Grid_ViewState extends State<Grid_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: GridView.count(
          
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
          children: [
            Container(
              color: Colors.redAccent,
              child: Center(child: Text("Box 1")
               ),
            ),
            Container(
              color: Colors.redAccent,
              child: Center(child: Text("Box 2")),
            ),
            Container(
              color: Colors.redAccent,
              child: Center(child: Text("Box 3")),
            ),
            Container(
              color: Colors.redAccent,
              child: Center(child: Text("Box 4")),
            ),
            Card(
              elevation: 20,

              child: Container(
                //color: Colors.amberAccent,
                
                child: Icon(
                  Icons.engineering,
                  size: 70,
                ),
                
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                 
                  color: Colors.amber[700],
                ),
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.room,
                size: 70,
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.home,
                size: 70,
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.search,
                size: 70,
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.settings_accessibility,
                size: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
