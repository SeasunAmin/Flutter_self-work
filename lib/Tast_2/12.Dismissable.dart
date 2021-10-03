import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.blueAccent
    ),
    home: Diss(),
  ));
}
class Diss extends StatefulWidget {
  const Diss({ Key? key }) : super(key: key);

  @override
  _DissState createState() => _DissState();
}

class _DissState extends State<Diss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Dismissible(
            key: ValueKey("a"),
            background: Container(
              color: Colors.blue,
              child: Icon(Icons.delete,size: 40,color: Colors.red,),
            ),
            child: ListTile(
              title: Text("Seasun"),
              subtitle: Text("Hello bro what's up? How is going on?"),
              trailing: Icon(Icons.sms,color: Colors.blueAccent,),
            ),
            
          ),
          Dismissible(
            key: ValueKey("b"),
            background: Container(
              color: Colors.blue,
              child: Icon(Icons.delete,size: 40,color: Colors.red,),
            ),
            child: ListTile(
              title: Text("Arif"),
              subtitle: Text("Hello bro what's up? How is going on?"),
              trailing: Icon(Icons.sms,color: Colors.blueAccent,),
            ),
            
          ),
          Dismissible(
            key: ValueKey("c"),
            background: Container(
              color: Colors.blue,
              child: Icon(Icons.delete,size: 40,color: Colors.red,),
            ),
            child: ListTile(
              title: Text("Boss"),
              subtitle: Text("Hello bro what's up? How is going on?"),
              trailing: Icon(Icons.sms,color: Colors.blueAccent,),
            ),
            
          ),
        ],
      ),
    );
  }
}