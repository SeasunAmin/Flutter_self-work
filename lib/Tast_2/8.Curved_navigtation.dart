import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.amber),
    home: Curved(),
  ));
}

class Curved extends StatefulWidget {
  const Curved({Key? key}) : super(key: key);

  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {

    var _page = 0;
    var page =[A(),B(),C(),D(),E()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home")),
        ),
        body: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
            color:Colors.redAccent,
            backgroundColor: Colors.lime,
            buttonBackgroundColor: Colors.cyan[200],
            animationCurve: Curves.ease,
            animationDuration: Duration(milliseconds: 500),
            onTap: (index){
              setState(() {
              _page = index;
              });
            },
            items: [
          Icon(Icons.alarm),
          Icon(Icons.call),
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.account_box),

        ]),
        body: page[_page],
       ),
    );
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "A",
        style: TextStyle(fontSize: 100),
      )),
    );
  }
}

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "B",
        style: TextStyle(fontSize: 100),
      )),
    );
  }
}

class C extends StatefulWidget {
  const C({Key? key}) : super(key: key);

  @override
  _CState createState() => _CState();
}

class _CState extends State<C> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image.asset('assets/car.png')
      ),
    );
  }
}

class D extends StatelessWidget {
  const D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "D",
        style: TextStyle(fontSize: 100),
      )),
    );
  }
}
class E extends StatelessWidget {
  const E({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "E",
        style: TextStyle(fontSize: 100),
      )),
    );
  }
}
