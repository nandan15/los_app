import 'package:flutter/material.dart';
import 'package:los_app/screens/branchSelect/branch_select.dart';

class Branchlisting extends StatefulWidget {
  @override
  _BranchlistingState createState() => _BranchlistingState();
}

class _BranchlistingState extends State<Branchlisting> {
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
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Perform login logic here
                      // For now, let's just print a message
                      print('Login successful');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BranchSelectScreen()),
                      );

                      // Navigate to the authentication screen
                    },
                    child: Text('Branch Listing'),
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
