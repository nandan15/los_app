import 'package:flutter/material.dart';

class ExistingApplication extends StatefulWidget {
  @override
  _ExistingApplicationState createState() => _ExistingApplicationState();
}

class _ExistingApplicationState extends State<ExistingApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Existing Application'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Bangalore',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '0002283/Mar 21 2024',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'BR Net Submission',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'New Center and New Member Process Flow',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Define the functionality for the Application button
                      },
                      child: Text('Application'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Application',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Appraisal',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Action',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('House Visit')),
                      DataCell(Text('Completed')),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('LAF_Supervision')),
                      DataCell(Text('Completed')),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells:[
                      DataCell(Text('GRT')),
                      DataCell(Text('Completed')),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells:[
                      DataCell(Text('Content Creation/View')),
                      DataCell(Text('Completed')),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells:[
                      DataCell(Text('Group Formation')),
                      DataCell(Text('Completed')),
      DataCell(Icon(Icons.check
                      )),
                      ]),
                      DataRow(cells:[
                        DataCell(Text('BR NET Submission')),
                        DataCell(Text('Pending')),
                        DataCell(Icon(Icons.access_time_sharp)),

                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
