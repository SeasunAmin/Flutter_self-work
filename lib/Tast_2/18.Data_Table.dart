import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: "seasun",
    theme: ThemeData(
      primaryColor: Colors.amber
    ),
    home: Data_Table(),
  ));
}
class Data_Table extends StatelessWidget {
  const Data_Table({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
      ),
      body: Center(
        child: SafeArea(
          child: Column(children: [
             SafeArea(
               child: DataTable(
                 headingRowHeight: 50,
                    
                columns: [
                   DataColumn(label: Text("Name",),tooltip: "Name"),
                   DataColumn(label: Text("ID"),tooltip: "ID"),
                   DataColumn(label: Text("Home"),tooltip: "Home"), 
                   DataColumn(label: Text("Hobby"),tooltip: "Hobby"),            
                ],
                rows: [
                     DataRow(cells:[
                      DataCell(Text("Seasun")),
                      DataCell(Text("20213")),
                      DataCell(Text("Dhaka")),
                      DataCell(Icon(Icons.facebook,color: Colors.blue,)),
                  ]
                  ),
                  DataRow(cells:[
                      DataCell(Text("Abul")),
                      DataCell(Text("20243")),
                      DataCell(Text("Dhaka")),
                      DataCell(Icon(Icons.sports_football,color: Colors.brown,)),
                  ]
                  ),
                  DataRow(cells:[
                      DataCell(Text("Habul")),
                      DataCell(Text("20154")),
                      DataCell(Text("Dhaka")),
                      DataCell(Icon(Icons.games,color: Colors.green[300],)),
                  ]
                  )
                ]
                         
                         ),
             ),
          ]
          ),
        ),
      ),
    );
  }
}