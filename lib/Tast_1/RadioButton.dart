import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: 'seasun boss',
    home: _Radio(),
    
  ));
}

class _Radio extends StatefulWidget {
  const _Radio({ Key? key }) : super(key: key);

  @override
  __RadioState createState() => __RadioState();
}

class __RadioState extends State<_Radio> {
  int _v = 0;

  void method(var value)
  {
    setState(() {
     _v = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          children: [
          
           SizedBox(height: 40,width: 50,),
            Row(
              children: [
                Radio(
              value: 1,
              groupValue: _v,
              
              onChanged: (value)
              {
                method(value);
                print(value);
                  
              },
              
              ),
              Text("Male "),
               Icon(Icons.male)
              
              ],
              
               ),
               Row(
                 children: [
                    Radio(
              value: 2,
              groupValue: _v,
              
              onChanged: (value)
              {
                method(value);
                print(value);
                  
              },
              
              ),
              Text("Female"),
              Icon(Icons.female)
              
                 ],
               ),
               Row(
                 children: [
                   Radio(
              value: 3,
              groupValue: _v,
              
              onChanged: (value)
              {
                method(value);
                print(value);
                  
              },
             
              ),
              Text("Others"),
             
              

              
                 ],
               ),

               
            
  

          ],
        ),
      ),
    );
  }
}