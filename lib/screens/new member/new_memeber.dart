import 'package:flutter/material.dart';
import 'package:los_app/screens/Activity%20Details/activity_details.dart';
import 'package:los_app/screens/newapplication/new_applicationscreen.dart';

class NewMemberPage extends StatefulWidget {
  @override
  _NewMemberPageState createState() => _NewMemberPageState();
}

class _NewMemberPageState extends State<NewMemberPage> {
  String selectedGroupProduct = 'Group Product A'; // Default value

  TextEditingController leadController = TextEditingController();
  TextEditingController centerNameController = TextEditingController();
  TextEditingController membersController = TextEditingController();

  List<String> groupProducts = ['Group Product A'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Member Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Adding New Lead',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Center Name:'),
                  TextFormField(controller: centerNameController),
                  SizedBox(height: 20.0),
                  Text('Enter Lead/Members:'),
                  TextFormField(controller: membersController),
                  SizedBox(height: 20.0),
                  Text('Select Group Product'),
                  DropdownButtonFormField<String>(
                    value: selectedGroupProduct,
                    items: groupProducts.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedGroupProduct = value!;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewApplicationScreen()),
                    // builder: (context) => ActivityDetails()),
                  );
                  print('New application created!');
                },
                child: Text('Create New Application'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NewMemberPage(),
  ));
}
