import 'package:flutter/material.dart';

void main() {
  runApp(BranchSelectApp());
}

class BranchSelectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Branch Select Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BranchSelectScreen(),
    );
  }
}

class BranchSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Select Demo'),
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
            'Username: JohnDoe',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Select Branch
          Text(
            'Select a Branch',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Branch buttons

          // Add more branches as needed
          SizedBox(height: 20),
          // Working Date
          Text(
            'Working Date: 2024-03-13',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          // Buttons for New Lead Creation, Village Survey, and Member File
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Handle New Lead Creation
                },
                icon: Icon(Icons.add),
                label: Text('New Lead Creation'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Village Survey
                },
                icon: Icon(Icons.map),
                label: Text('Village Survey'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Member File
                },
                icon: Icon(Icons.person),
                label: Text('Member File'),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Footer
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle Home button
                },
                child: Text('Home'),
              ),
              TextButton(
                onPressed: () {
                  // Handle Utilities button
                },
                child: Text('Utilities'),
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
