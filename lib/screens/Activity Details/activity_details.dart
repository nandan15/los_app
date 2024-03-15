import 'package:flutter/material.dart';
import 'package:los_app/screens/Address/address_button.dart';
import 'package:los_app/screens/existing%20application/existing_application.dart';
import 'package:los_app/screens/member%20Screen/member_screen.dart';
import 'package:los_app/screens/prospect%20maintenance/prospect_maintenance.dart';
import 'package:los_app/screens/referscreen/referscreen.dart';

class ActivityDetails extends StatefulWidget {
  @override
  _ActivityDetailsState createState() => _ActivityDetailsState();
}

class _ActivityDetailsState extends State<ActivityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Details'),
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
            'Prospect Maintenance',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            'New Center and New Member Process Flow',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Application',
                  style: TextStyle(color: Colors.blue), // Change color here
                ),
              ),
              DataColumn(
                label: Text(
                  'Approved',
                  style: TextStyle(color: Colors.blue), // Change color here
                ),
              ),
              DataColumn(
                label: Text(
                  'Action',
                  style: TextStyle(color: Colors.blue), // Change color here
                ),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Prospect Maintenance')),
                DataCell(Text('InProgress')),
                DataCell(IconButton(
                  icon: Icon(Icons.menu_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProspectMaintenance()),
                    );
                  },
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('Quick Data Entry')),
                DataCell(Text('Pending')),
                DataCell(IconButton(
                  icon: Icon(Icons.access_time),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Member()),
                    );
                  },
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('Detail Data Entry')),
                DataCell(Text('Not Started')),
                DataCell(IconButton(
                  icon: Icon(Icons.not_started),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExistingApplication()),
                    );
                  },
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('CGT')),
                DataCell(Text('Not Started')),
                DataCell(IconButton(
                  icon: Icon(Icons.not_started),
                  onPressed: () {
                    // Add functionality for the action
                  },
                )),
              ]),
            ],
          ),

          Spacer(), // Added Spacer widget to push the footer to the bottom
          BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Add functionality for Rule Override
                  },
                  child: Text('Rule Override'),
                ),
                Row(
                  children: [
                    SizedBox(width: 1), // Adjust spacing between buttons
                    Padding(
                      padding: EdgeInsets.only(
                          right: 0), // Adjust left padding for 'Import'
                      child: TextButton(
                        onPressed: () {
                          // Add functionality for Import
                        },
                        child: Text('Drop'),
                      ),
                    ),
                    Text(
                      '/',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(width: 1), // Adjust spacing between buttons
                    Padding(
                      padding: EdgeInsets.only(
                          right: 10), // Adjust left padding for 'Import'
                      child: TextButton(
                        onPressed: () {
                          // Add functionality for Import
                        },
                        child: Text('Import'),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Add functionality for View
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReferScreen()),
                    );
                  },
                  child: Text('View'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
