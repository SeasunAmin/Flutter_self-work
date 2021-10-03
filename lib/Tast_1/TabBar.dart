import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    home: TabBarTest(),
    theme: ThemeData(primaryColor: Colors.teal),
  ));
}

class TabBarTest extends StatefulWidget {
  const TabBarTest({Key? key}) : super(key: key);

  @override
  _TabBarTestState createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> {
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home")),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.pinkAccent,
                ),
                text: "seasun",
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.amber,
                ),
                text: "home",
              ),
              Tab(
                icon: Icon(
                  Icons.laptop,
                  size: 40,
                  color: Colors.lime,
                ),
                text: "work",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            One(),
            Two(),
            Three(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.teal,
          child: TabBar(unselectedLabelColor: Colors.grey, tabs: [
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shop,
                size: 40,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.payments,
                size: 40,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(58.0),
      child: Card(
        child: Image.asset("assets/ss.jpeg"),
      ),
    );
  }
}

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(58.0),
      child: Card(
        child: Icon(
          Icons.car_rental,
          size: 100,
        ),
      ),
    );
  }
}

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(58.0),
      child: Card(
        child: Icon(
          Icons.alarm,
          size: 100,
        ),
      ),
    );
  }
}
