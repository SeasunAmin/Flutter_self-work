import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tast_app/Multipage%20App/page2.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun boss",
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("This is page one....\n"),
            Center(
              child: RaisedButton(
                child: Text("Next"),
                onPressed: () {
                  Route route =
                  MaterialPageRoute(builder: (context) => Page_2());
                  Navigator.push(context, route);
                },
              ),
            ),
          ],
        ));
  }
}
