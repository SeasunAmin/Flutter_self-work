import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.red),
    home: Expa(),
  ));
}

class Expa extends StatefulWidget {
  const Expa({Key? key}) : super(key: key);

  @override
  _ExpaState createState() => _ExpaState();
}

class _ExpaState extends State<Expa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
         
          p1(),
          p2()
        ],
      ),
    );
  }
}

class p1 extends StatefulWidget {
  const p1({ Key? key }) : super(key: key);

  @override
  _p1State createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ExpansionTile(
            title: Text("Seasun"),
            subtitle: Text("Click and meet."),
            trailing: Icon(
              Icons.person,
              color: Colors.green,
              size: 35,
            ),
            children: [
              Container(
                  height: 200,
                  width: 400,
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.yellow[50],
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          child: Image.asset("assets/car.png"),
                        ),
                      ),
                      Text(" My sweet Car",),
                      
                    ],
                  )),
            ],
          ),
        ],
      );
  }
}

class p2 extends StatefulWidget {
  const p2({ Key? key }) : super(key: key);

  @override
  _p2State createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
            title: Text("Home"),
            subtitle: Text("Click and go to home page."),
            trailing: Icon(
              Icons.home,
              color: Colors.green,
              size: 35,
            ),
            children: [
              Container(
                  height: 200,
                  width: 400,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.yellow[50],
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          child: Image.asset("assets/monkey2.png"),
                        ),
                      ),
                      Text("Monkey hulu",),
                      
                    ],
                  ),
              ),
            ],
          );
  }
}