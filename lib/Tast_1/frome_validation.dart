import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun bosssss",
    home: FromeValidation(),
  ));
}

class FromeValidation extends StatefulWidget {
  const FromeValidation({Key? key}) : super(key: key);

  @override
  _FromeValidationState createState() => _FromeValidationState();
}

class _FromeValidationState extends State<FromeValidation> {
  var fromKey = GlobalKey<FormState>();

  var email = TextEditingController();
  var pass = TextEditingController();
  var phn = TextEditingController();

  var Email, Pass, Phn;

  void handleSubmit() {
    if (fromKey.currentState!.validate()) {
      fromKey.currentState!.save();
      print("Email : ${this.Email}");
      print("Passwors ${this.Pass}");
      print("Phn:${this.Phn}");
    }
  }

  void handlReset() {
    email.clear();
    pass.clear();
    phn.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Card(
                  child: Image.asset(
                    "assets/group.png",
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: fromKey,
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Email Address:",
                          border: OutlineInputBorder()),
                      validator: (val) {
                        if (val == null || val.isEmpty)
                          return ("ERROR!Enter an Email.");
                      },
                      controller: email,
                      onSaved: (val) {
                        this.Email = val;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Pssword:",
                          border: OutlineInputBorder()),
                      validator: (val) {
                        if (val == null || val.length == 0)
                          return ("ERRO! Enter Password");
                      },
                      controller: pass,
                      onSaved: (val) {
                        this.Pass = val;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      maxLength: 11,
                      decoration: InputDecoration(
                          labelText: "Enter Mobile no:",
                          border: OutlineInputBorder()),
                      validator: (val) {
                        if (val == null || val.length < 11)
                          return ("ERROR! Enter Mobile no.");
                      },
                      controller: phn,
                      onSaved: (val) {
                        this.Phn = val;
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                      ),
                      RaisedButton(
                        child: Text(
                          "Reset",
                        ),
                        onPressed: () {
                          handlReset();
                        },
                      ),
                      SizedBox(
                        height: 10,
                        width: 5,
                      ),
                      RaisedButton(
                        color: Colors.green,
                        child: Text("Submit"),
                        onPressed: () {
                          handleSubmit();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
