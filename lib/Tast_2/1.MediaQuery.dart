import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.tealAccent,
    ),
    home: Media(),
  ));

}

class Media extends StatelessWidget {
  const Media({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
      
      children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width/2,
            child: Center(child: Image.asset("assets/monkey2.png")),
          ),
        )
      ],
      ),
    );
  }
}