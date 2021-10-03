import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Test App",
    home: IconBot(),
  ));
}

class IconBot extends StatefulWidget {
  const IconBot({Key? key}) : super(key: key);

  @override
  _IconBotState createState() => _IconBotState();
}

class _IconBotState extends State<IconBot> {
  var vol = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text('$vol'),
            IconButton(
              icon: Icon(Icons.volume_up, size: 50, color: Colors.green),
              onPressed: () {
                setState(() {
                  vol++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
