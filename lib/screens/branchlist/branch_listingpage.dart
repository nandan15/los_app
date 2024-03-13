import 'package:flutter/material.dart';
import 'package:los_app/screens/branchSelect/branch_select.dart';

class BranchListing extends StatefulWidget {
  @override
  _BranchListingState createState() => _BranchListingState();
}

class _BranchListingState extends State<BranchListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Listing'),
      ),
      body: Column(
        children: [
          HeaderSection(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Nandan',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('ID')),
                      DataColumn(label: Text('Branch Name')),
                      DataColumn(label: Text('Action')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('001')),
                        DataCell(Text('Bangalore')),
                        DataCell(
                          IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BranchSelectApp(),
                                ),
                              );
                            },
                          ),
                        ),
                      ]),
                      // Add more DataRow entries for additional branches
                    ],
                  ),
                ],
              ),
            ),
          ),
          FooterSection(),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Header Section',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Footer Section',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
