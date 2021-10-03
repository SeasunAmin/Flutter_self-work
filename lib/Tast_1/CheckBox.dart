import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun boss",
    home: _Checkbox(),
    
    theme: ThemeData(
      primaryColor:Colors.tealAccent
    ),
  ));
}
class _Checkbox extends StatefulWidget {
  const _Checkbox({ Key? key }) : super(key: key);

  @override
  __CheckboxState createState() => __CheckboxState();
}

class __CheckboxState extends State<_Checkbox> {
bool _box = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Seasun Home")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
       
          child: Container(
            
            child:  Column(
            children: [
              SizedBox(height: 200,),
              Center(child: Text("Are you agree with the agrement?",style: TextStyle(fontSize: 20),),),
              Checkbox(
              value: _box,
              onChanged: (staus)
              {
                print(staus);
                setState(() {
                  _box = staus!;
                });
              }
              )
            ],
            
            ),
          
           
          ),
          
           
          
        ),
      
    );
  }
}