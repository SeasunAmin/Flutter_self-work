import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    home: Swit(),
    theme: ThemeData(
      primaryColor: Colors.tealAccent,
    ),
  ));
}
class Swit extends StatefulWidget {
  const Swit({ Key? key }) : super(key: key);

  @override
  _SwitState createState() => _SwitState();
}

class _SwitState extends State<Swit> {

  bool bal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
      
          children: [
          SizedBox(height: 30,width: 50,),
            
            Center(
              child: Switch(
                
                value: bal,
                onChanged: (value)
              {
                setState(() {
                  bal = value;
                });
                print(value);
              },
              activeColor: Colors.red,
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.purple,
              
              ),
            ),
          ],
      ),
    );
  }
}