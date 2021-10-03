import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '2.Liquid_Swipe.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.green),
    home: Onbo(),
  ));
}
class Onbo extends StatefulWidget {
  const Onbo({ Key? key }) : super(key: key);

  @override
  _OnboState createState() => _OnboState();
}

class _OnboState extends State<Onbo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Seasun land",
              body: "Welcome to seasun land",
              image: Image.asset("assets/car.png",width: 350,)
            ),
             PageViewModel(
              title: "Reading",
              body: "Welcome to Reading Zoon",
              image: Image.asset("assets/book.jpg",width: 350,)
            ),
            PageViewModel(
              title: "Love ",
              body: "Welcome to Love Zoon",
              image: Image.asset("assets/love.png",width: 350,)
            ),
           
          ],
          onDone: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>Liquid()));
          },
          done: Text("Done"),
          skip: Text("Skip..."), 
          showSkipButton: true,
          showNextButton: true,
          next:Text("Next") ,
         
        ),
      )
    );
  }
}