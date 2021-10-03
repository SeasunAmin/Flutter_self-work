import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tast_app/Tast_1/Card.dart';





void main()
{
  runApp(MaterialApp(
    title: "seasun",
    home: Drawer1(),
    theme:ThemeData(
      primaryColor: Colors.amber
    ) ,
  ));
}
class Drawer1 extends StatefulWidget {
  const Drawer1({ Key? key }) : super(key: key);

  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("seasun"),
              accountEmail: Text("seasun@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset("assets/admin.png"),
              ),
            
            ),
            ListTile(
              title: Text("Call"),
              subtitle: Text("Call now to help "),
              trailing: Icon(Icons.call,color: Colors.green,size: 30,),
              onTap: (){
                
                   Route route =
                   MaterialPageRoute(builder: (context) => HomePage());
                   Navigator.push(context, route);
                  print("call");
              },

            ),

            ListTile(
              title: Text("Send sms"),
              subtitle: Text("give us sms "),
              trailing: Icon(Icons.sms,color: Colors.green,size: 30,),
              onTap: (){

                  print("sms");
                  
              },

            ),
            ListTile(
              title: Text("Settings"),
              subtitle: Text("change your account"),
              trailing: Icon(Icons.settings,color: Colors.green,size: 30,),
              onTap: (){

                  print("setting");
              },
              

            ),
            
            
            

          ],
        ),
      ),
    );

  }
}