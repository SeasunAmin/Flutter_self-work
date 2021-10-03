import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Text Change",
    home: TextChange(),
  ));
}

class TextChange extends StatefulWidget {
  const TextChange({Key? key}) : super(key: key);

  @override
  _TextChangeState createState() => _TextChangeState();
}

class _TextChangeState extends State<TextChange> {
  String txt = "";
  @override
  void initState() {
    txt = "seasun bosss";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(txt),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("Click"),
                onPressed: () {
                  setState(() {
                    txt = "Bismilla hir rahamanir rahim";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
