import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplicationTab extends StatefulWidget {
  @override
  _ApplicationTabState createState() => _ApplicationTabState();
}

class _ApplicationTabState extends State<ApplicationTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            '<Center Name>/New Center   D02112345/31 March 2024',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            'BR.NET Submission   New Center and New Member Process Flow',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 5),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // nyjnjykjyik,fyki
              Container(
                child: Row(
                  children: [
                    Text('Application Stage - Quick Data Entry'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(),
          // Working Data
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.incomplete_circle_outlined),
                label: Text('In Progress'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.check_circle),
                label: Text('Completed'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                "Name",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            DataColumn(
              label: Text(
                "Mobile",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            DataColumn(
              label: Text(
                "DOB",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            DataColumn(
              label: Text(
                "Status",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
          // Add your data rows here


      rows: [
              DataRow(cells: [
                DataCell(Text('Ram')),
                DataCell(Text('xxx')),
                DataCell(Text('19/07/1998')),
                DataCell(Icon(Icons.check)),
              ]),
              DataRow(cells: [
                DataCell(Text('Shyam')),
                DataCell(Text('xxx')),
                DataCell(Text('19/07/1998')),
                DataCell(Icon(Icons.check)),
              ]),
              DataRow(cells: [
                DataCell(Text('Srii')),
                DataCell(Text('xxx')),
                DataCell(Text('19/07/1998')),
                DataCell(Icon(Icons.check)),
              ])
            ],
          ),
      ),
        ],

      ),
    );
  }
}
