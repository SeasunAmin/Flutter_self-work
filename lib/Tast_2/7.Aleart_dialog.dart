import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.pink
    ),
    home: Alr(),
  ));
}
class Alr extends StatefulWidget {
  const Alr({ Key? key }) : super(key: key);

  @override
  _AlrState createState() => _AlrState();
}

class _AlrState extends State<Alr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(child: Text("Click"),
          onPressed: (){
            showDialog(context: context, builder: (context){
             return AlertDialog(
               title: Text("Aleart...!!"),
               content: Text("seasun boss is coming"),
               actions: [
                 RaisedButton(child: Text("ok"),
                 onPressed: (){Navigator.pop(context);}
                 ,)
               ],
             );
            }
            );
          },
          ),
        ),
      ),
    );
  }
}