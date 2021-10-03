import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'TextField',
    home: TextF(),
  ));
}

class TextF extends StatefulWidget {
  const TextF({Key? key}) : super(key: key);

  @override
  _TextFState createState() => _TextFState();
}

class _TextFState extends State<TextF> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                labelStyle: TextStyle(color: Colors.green),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: show,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your name",
                labelStyle: TextStyle(color: Colors.green),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(Icons.password_rounded),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
