import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hero_2 extends StatefulWidget {
  const Hero_2({ Key? key }) : super(key: key);

  @override
  _Hero_2State createState() => _Hero_2State();
}

class _Hero_2State extends State<Hero_2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Hero(
          tag: "add",
                child: Icon(Icons.home,size: 170,),
        ),
      ),
    );
  }
}