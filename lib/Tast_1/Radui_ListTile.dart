import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    home: RadioTile(),
    theme: ThemeData(
      primaryColor: Colors.amber,
    ),
  ));
}
class RadioTile extends StatefulWidget {
  const RadioTile({ Key? key }) : super(key: key);

  @override
  _RadioTileState createState() => _RadioTileState();
}

class _RadioTileState extends State<RadioTile> {

  int _val = 0;
  void method(var  value)
  {
    setState(() {
      _val = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          decoration: BoxDecoration(
          border: Border.all(color: Colors.pinkAccent),
          ),
         child: Column(
           children: [
             SizedBox(width: 50,height: 30,),

             Text("Select one of them.",style: TextStyle(fontSize: 20),),
             SizedBox(width: 50,height: 30,),
             RadioListTile(
               value: 1, 
               groupValue: _val,
               onChanged: (value)
               {
                 method(value);
               },
               title: Text("Flutter"),
               subtitle: Text("7 developer needed"),
               secondary: Icon(Icons.flutter_dash,color: Colors.teal,size: 30,),
              ),
              
               RadioListTile(
               value: 2, 
               groupValue: _val,
               onChanged: (value)
               {
                 method(value);
               },
                title: Text("Android"),
                subtitle: Text("10 developer needed"),
                secondary: Icon(Icons.android,color: Colors.green,size: 30,),
              
              ),
               RadioListTile(
               value: 3, 
               groupValue: _val,
               onChanged: (value)
               {
                 method(value);
               },
                title: Text("iOS"),
                subtitle: Text("3 developer needed"),
                secondary: Icon(Icons.laptop_mac,color: Colors.blueGrey,size: 30,),
              
              ),
            
           ],
           

         ),
        ),
      ),
    );
  }
}