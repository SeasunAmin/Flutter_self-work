import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.teal,
    ),
    home: Page_V(),
  ));
}
class Page_V extends StatefulWidget {
  const Page_V({ Key? key }) : super(key: key);

  @override
  _Page_VState createState() => _Page_VState();
}

class _Page_VState extends State<Page_V> {

  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: PageView(
          //scrollDirection: Axis.vertical,
          children: [
            Page_1(),
            Page_2(),
            Page_3(),

          ],
        ),
      ) 
     );
  }
}

class Page_1 extends StatelessWidget {
  const Page_1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/car.png"),
          Image.asset("assets/bulb.png"),
          Image.asset("assets/car.png"),
          Image.asset("assets/bulb.png"),
        ],
      ),
    );
  }
}

class Page_2 extends StatelessWidget {
  const Page_2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.pink,
    child: Image.asset("assets/bulb.png"),
    );
  }
}

class Page_3 extends StatelessWidget {
  const Page_3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.lime,
    child: Image.asset("assets/monkey2.png"),
    );
  }
}