import 'package:flutter/material.dart';

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
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Application Stage - Quick Data Entry'),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
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
          ),
        ),
      ),
    );
  }
}
