import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.amber),
    home: Custom(),
  ));
}

class Custom extends StatefulWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Click"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        overflow: Overflow.visible,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 350,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Text(
                                    "Nazrul Amin",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    '''Northern Univarsity Bangladesh.\n'''
                                    '''Departmant of Computer Science and Enfinnering.'''
                                    '''Flutter Application Developer.\n'''
                                    '''Id 2001010490.\nHome dhaka jatrabari''',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.cyan ,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  child: Image.asset("assets/team.png"),
                                ),
                              ),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
