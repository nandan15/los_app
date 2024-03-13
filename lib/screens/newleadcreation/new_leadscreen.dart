import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:los_app/screens/new member/new_memeber.dart';
void main() {
  runApp(NewLeadScreenApp());
}

class NewLeadScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adding New Lead',
      theme: ThemeData(),
      home: NewLeadScreen(),
    );
  }
}

class NewLeadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adding New Lead'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              'Select process flow to continue',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your authentication logic here (e.g., check credentials)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewMemberPage()),
                );
              },
              child: Text('New Center'),
            ),
            Text(
              '* New center and New member process flow >',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              '* New center without CB >',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your authentication logic here (e.g., check credentials)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewLeadScreenApp()),
                );
              },
              child: Text('Existing Center'),
            ),
            Text(
              '* Existing center and Existing member process flow >',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        )));
  }
}
