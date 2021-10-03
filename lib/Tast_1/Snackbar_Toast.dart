import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun boss",
    home: SeasunBro(),
  ));
}

class SeasunBro extends StatefulWidget {
  const SeasunBro({Key? key}) : super(key: key);

  @override
  _SeasunBroState createState() => _SeasunBroState();
}

class _SeasunBroState extends State<SeasunBro> {
  _showsnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("East of Weast seasun boss is the best ")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boss"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Click"),
          onPressed: () {
            _showsnackbar();
          },
        ),
      ),
    );
  }
}
