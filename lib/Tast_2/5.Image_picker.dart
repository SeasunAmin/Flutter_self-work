import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.amber
    ),
    home: Pick(),
  ));
}

class Pick extends StatefulWidget {
  const Pick({ Key? key }) : super(key: key);

  @override
  _PickState createState() => _PickState();
}
 
class _PickState extends State<Pick> {

  var _image;
 final pickimage = ImagePicker();

Future  camera()
  async {
    final image = await pickimage.pickImage(source: ImageSource.camera);
     setState(() {
       _image = File(image!.path);
     });
  }

  Future  galarry()
  async {
    final image = await pickimage.pickImage(source: ImageSource.gallery);
     setState(() {
       _image = File(image!.path);
     });
  }


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                 
                  child: Card(
                    
                    elevation: 20,
                    color: Colors.tealAccent,
                    child:_image==null? 
                    Center(child: Text("Select an image",style: TextStyle(fontSize: 25),))
                    :Image.file(_image),
                    
                    
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
              FloatingActionButton(
                child: Icon(Icons.camera,),
                onPressed: (){
                  camera();
                },
              ),
              SizedBox(width: 14,),
              FloatingActionButton(
                child: Icon(Icons.image,),
                onPressed: (){
                  galarry();
                },
              ),
        
        
        
            ],)
          ],
        ),
        
      ),
      
    );
  }
}

