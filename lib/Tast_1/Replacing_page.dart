import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.teal,
    ),
    home: Replac(),
  ));
}
class Replac extends StatefulWidget {
  const Replac({ Key? key }) : super(key: key);

  @override
  _ReplacState createState() => _ReplacState();
}

class _ReplacState extends State<Replac> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text("Hello everyonr let's go a new world",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:Colors.redAccent[700]),
                ),
            ),
            Padding(   
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset("assets/love.png"),
               TextFormField(
                      decoration: InputDecoration(
                      hintText: "Enter username", labelText: " Name",
                      border:OutlineInputBorder(),
      
                      ),
                    ),
                SizedBox(height: 20,),
               TextFormField(
                 decoration: InputDecoration(
                   hintText:  "Enter Password",
                   labelText: "Password",
                   border: OutlineInputBorder(),
                 ),
               ),
               SizedBox(height: 20,),

              RaisedButton(

                elevation: 10,
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                child: Text("Login",style: TextStyle(fontSize: 18),),

                onPressed: (){
                  
                },
              ),
               
               
              ],
            ),
            
             
             
      
          ),
          
          ],
         
        ),
      ),
    );
  }
}