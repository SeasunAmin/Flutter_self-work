import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: " Home",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mycard(),
            SizedBox(
              height: 60,
            ),
            mycard4(),
            SizedBox(
              height: 60,
            ),
            mycard2(),
            SizedBox(
              height: 60,
            ),
            mycard3(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

Widget mycard() {
  return Material(
    elevation: 10,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/book.jpg",
              ),
              Text(
                "For seale:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Price 21\$",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget mycard2() {
  return Material(
    elevation: 10,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/duck.gif",
              ),
              Text(
                "For seale:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Price 27\$",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget mycard3() {
  return Material(
    elevation: 10,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/bulb.png",
              ),
              Text(
                "For seale:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Price 2.0\$",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget mycard4() {
  return Material(
    elevation: 30,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/mick.png",
              ),
              Text(
                "For seale:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Price 25\$",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.blue,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    ),
  );
}
