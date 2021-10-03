import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hero_page_2.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.amber
    ),
    home: Hero_w(),
  ));
}

class Hero_w extends StatefulWidget {
  const Hero_w({ Key? key }) : super(key: key);

  @override
  _Hero_wState createState() => _Hero_wState();
}

class _Hero_wState extends State<Hero_w> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(
                tag: "add",
                child: Icon(Icons.add_a_photo,size: 40,),

              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Hero_2()));
              },
            ),
          ),
          
        ),
        
      ),
    );
  }
}
