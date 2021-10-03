import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tast_app/Tast_2/8.Curved_navigtation.dart';

void main() {
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(primaryColor: Colors.greenAccent),
    home: Date(),
  ));
}

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  late DateTime _dateTime;
  getDatae() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));

    setState(() {
      _dateTime = date!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _dateTime == null
                  ? "Date of Birth :"
                  : "Birth day is: ${_dateTime.day},${_dateTime.month},${_dateTime.year}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    getDatae();
                  },
                  icon: Icon(
                    Icons.date_range,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.timer,
                    size: 40,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
