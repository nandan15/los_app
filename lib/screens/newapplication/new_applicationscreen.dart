import 'package:flutter/material.dart';

class NewApplicationScreen extends StatefulWidget {
  @override
  NewApplicationScreenApp createState() => NewApplicationScreenApp();
}

class NewApplicationScreenApp extends State<NewApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Application'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          DataTable(columns: [
            DataColumn(
              label: Text(
                'Center Details',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            DataColumn(
              label: Text(
                'EIA Global',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('Center Type')),
              DataCell(Text('New Center')),
            ]),
            DataRow(cells: [
              DataCell(Text('File Details')),
              DataCell(Text('00212345 / Mar 31 2024')),
            ]),
            DataRow(cells: [
              DataCell(Text('Activity Details')),
              DataCell(Text('Quick Data Entity')),
            ]),
            DataRow(cells: [
              DataCell(Text('Process')),
              DataCell(Text('New Center and New Member process flow')),
            ]),
          ])
        ],
      ),
    );
  }
}
