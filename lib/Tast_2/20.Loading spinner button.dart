import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '2.Liquid_Swipe.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primarySwatch: Colors.teal),
    home: Spinner(),
  ));
}

class Spinner extends StatefulWidget {
  const Spinner({Key? key}) : super(key: key);

  @override
  State<Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 22),
                    minimumSize: Size.fromHeight(50),
                    shape: StadiumBorder()),
                child: isLoading
                    ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         CircularProgressIndicator(
                        color: Colors.pink),
                        const SizedBox(width: 20,),
                        Text("Please wait..."),
                      ],
                    )
                    :Text("Login"),
                  
                onPressed: ()async {
                  if(isLoading)  return;
                  setState((){
                    
                    isLoading = true;
                    
                  });
                   await Future.delayed(Duration(seconds: 2));
                    setState(() {
                      isLoading = false; 
                      Route route =
                    MaterialPageRoute(builder: (context) => Liquid());
                    Navigator.push(context, route);
                    });
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
