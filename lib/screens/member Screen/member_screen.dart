import 'package:flutter/material.dart';

class Member extends StatefulWidget {
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
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
                Text(
                  'Application Stage - Prospect Maintenance',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Name',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Status',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Profile")),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Loan Details')),
                      DataCell(Icon(Icons.check)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Address')),
                      DataCell(Icon(Icons.check)),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NewLeadScreen()),
              // );
            },
            icon: Icon(Icons.portrait_rounded),
            label: Text('Profile View'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Handle Member File
            },
            icon: Icon(Icons.remove_red_eye_outlined),
            label: Text('POC View'),
          ),
        ],
      ),
    );
  }
}
