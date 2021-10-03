import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    title: 'seasun boss',
    home: CheckView(),
    theme: ThemeData(
      primaryColor: Colors.orangeAccent,

    ),

  ));
}

class CheckView extends StatefulWidget {
  const CheckView({ Key? key }) : super(key: key);

  @override
  _CheckViewState createState() => _CheckViewState();
}

class _CheckViewState extends State<CheckView> {
  bool box = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("seasun"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Column(
            children: [
              Card(
                child: CheckboxListTile(
                  value: box,
                  onChanged: (value)
                  {
                    setState(() {
                      box  = value!;
                    });
                    print(value);
                  },
                  title: Text("1.we send you email's."),
                  subtitle: Text("it has no time table"),
                 secondary: Icon(Icons.email,color: Colors.red,size: 40,),
                ),
                
              ),
              
            ],
          ),
          
        ),
      ),
    );
  }
}