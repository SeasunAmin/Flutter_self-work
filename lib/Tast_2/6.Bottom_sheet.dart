import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.pink
    ),
    home: Boo(),
  ));
}
class Boo extends StatefulWidget {
  const Boo({ Key? key }) : super(key: key);

  @override
  _BooState createState() => _BooState();
}

class _BooState extends State<Boo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
          child: Text("Click"),
          color: Colors.amber,
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height: 250,
                child:Column(
                  children: [
                    ListTile(
                      title: Text("Camera"),
                      subtitle: Text("Click hear to tack photo"),
                      trailing: Icon(Icons.photo_camera),
                    ),
                     ListTile(
                      title: Text("Audio"),
                      subtitle: Text("Click hear to play"),
                      trailing: Icon(Icons.audiotrack),
                    ),
                     ListTile(
                      title: Text("Home"),
                      subtitle: Text("Click hear to go"),
                      trailing: Icon(Icons.home
                    )
                     )
                  ],
                ) ,
              );
            });
          },
      ),
        ),
      ),
    );
    
  }
}