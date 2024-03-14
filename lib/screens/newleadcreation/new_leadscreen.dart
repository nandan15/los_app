import 'package:flutter/material.dart';
import 'package:los_app/screens/new member/new_memeber.dart';

class NewLeadScreen extends StatefulWidget {
  @override
  NewLeadScreenApp createState() => NewLeadScreenApp();
}

class NewLeadScreenApp extends State<NewLeadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adding New Lead'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  MaterialPageRoute(builder: (context) => NewLeadScreen()),
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
