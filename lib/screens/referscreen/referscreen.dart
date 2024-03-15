import 'package:flutter/material.dart';

class ReferScreen extends StatefulWidget {
  @override
  ReferScreenApp createState() => ReferScreenApp();
}

class ReferScreenApp extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Bangalore',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            '0002283/Mar 21 2024',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            'BR.Net Submission',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            'New Center/New Member Process Flow',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  '',
                ),
              ),
              DataColumn(
                label: Text(
                  'Application Stage',
                ),
              ),
              DataColumn(
                label: Text(
                  '',
                ),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Dedupe')),
                DataCell(Text('>')),
                DataCell(Text('[Verify from LMS]')),
              ]),
              DataRow(cells: [
                DataCell(Text('ID Verification')),
                DataCell(Text('>')),
                DataCell(Text('[Third party Pan/Aadhar]')),
              ]),
              DataRow(cells: [
                DataCell(Text('Credit Bureau')),
                DataCell(Text('>')),
                DataCell(Text('[Third Party Egcm/CIBL]')),
              ]),
              DataRow(cells: [
                DataCell(Text('Status View')),
                DataCell(Text('>')),
                DataCell(Text('')),
              ]),
              DataRow(cells: [
                DataCell(Text('Status Check')),
                DataCell(Text('>')),
                DataCell(Text('')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
