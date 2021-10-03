import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  _Page_2State createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("This is page two...\n"),
            Center(
              child: RaisedButton(
                child: Text("Previous"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
