import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    home: SliderW(),
    theme: ThemeData(
      primaryColor: Colors.tealAccent,
    ),
  ));
}
class SliderW extends StatefulWidget {
  const SliderW({ Key? key }) : super(key: key);

  @override
  _SliderWState createState() => _SliderWState();
}

class _SliderWState extends State<SliderW> {

  double bal = 10.0;

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
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text("Nazrul Amin Seasun",style: TextStyle(fontSize: bal),),
              ),
              SizedBox(height: 90,width: 50,),
              Slider(
                value: bal, 
                min: 10,
                max: 30,
                onChanged: (value)
                {
                  setState(() {
                    bal = value;
                  });
                  print(value);
                },

               activeColor: Colors.green,
               inactiveColor: Colors.amber,
               divisions: 5,
               label: "Range",
              ),
              Text("Range value $bal"),
            ],
            
          ),
        ),
      ),
      
    );
  }
}