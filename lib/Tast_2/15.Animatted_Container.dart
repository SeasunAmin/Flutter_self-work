import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.amber),
    home:  Acon(),
  ));
}
class Acon extends StatefulWidget {
  const Acon({ Key? key }) : super(key: key);

  @override
  _AconState createState() => _AconState();
}

class _AconState extends State<Acon> {
  bool val =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("seasun"),
      ),
      body: Container(
            child: Center(
              child: AnimatedContainer(
                height: val==false?150:350,
                width: val==false?150:350,
                color: Colors.pink,
                duration: Duration(seconds: 3),
              ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        setState(() {
          val=!val;
        });
      },),
    );
  }
}