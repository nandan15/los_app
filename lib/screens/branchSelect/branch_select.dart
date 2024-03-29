import 'package:flutter/material.dart';
import 'package:los_app/screens/New%20Address/newaddress.dart';
import 'package:los_app/screens/housevisit/housevisit_screen.dart';
import 'package:los_app/screens/newapplication/new_applicationscreen.dart';
import 'package:los_app/screens/newleadcreation/new_leadscreen.dart';
import 'package:los_app/screens/referscreen/referscreen.dart';



class BranchSelect extends StatefulWidget {
  @override
  _BranchSelect createState() => _BranchSelect();
}

class _BranchSelect extends State<BranchSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Select'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          // Logo
          FlutterLogo(size: 100),
          SizedBox(height: 20),
          // Username
          Text(
            'Username: Sriiiiiiiiii',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Select Branch
          Text(
            'Select a Branch:002/Mumbai',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          // Working Date
          Text(
            'Working Date: 2024-03-13',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Buttons for New Lead Creation and Member File
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewLeadScreen()),
                  );
                },
                icon: Icon(Icons.add),
                label: Text('New Lead Creation'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Member File
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewAddress()),
                  );
                },
                icon: Icon(Icons.person),
                label: Text('Member File'),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Village Survey
          ElevatedButton.icon(
            onPressed: () {
              // Handle Village Survey
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HouseVisitScreen()),
              );
            },
            icon: Icon(Icons.map),
            label: Text('Village Survey'),
          ),
          SizedBox(height: 20),
          // Footer
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home button with divider on the right
              Container(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Home button
                      },
                      child: Text('Home'),
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 20, // Adjust the width as needed
                    ),
                  ],
                ),
              ),
              // Utilities button with divider on the left
              Container(
                child: Row(
                  children: [
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 20, // Adjust the width as needed
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle Utilities button
                      },
                      child: Text('Utilities'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleBranchSelection(BuildContext context, String branchName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BranchDetailsScreen(branchName: branchName),
      ),
    );
  }
}

class BranchDetailsScreen extends StatelessWidget {
  final String branchName;

  BranchDetailsScreen({required this.branchName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Details'),
      ),
      body: Center(
        child: Text(
          'You selected: $branchName',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
