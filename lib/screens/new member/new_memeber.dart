import 'package:flutter/material.dart';

class NewMemberPage extends StatefulWidget {
  @override
  _NewMemberPageState createState() => _NewMemberPageState();
}

class _NewMemberPageState extends State<NewMemberPage> {
  String selectedGroupProduct = '';
  String selectedWeeklyOption = '';

  TextEditingController leadController = TextEditingController();
  TextEditingController centerNameController = TextEditingController();
  TextEditingController membersController = TextEditingController();

  List<String> groupProducts = ['Group Product A', 'Group Product B', 'Group Product C'];
  List<String> weeklyOptions = ['Weekly Option X', 'Weekly Option Y', 'Weekly Option Z'];

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
            Text('Add New Lead:'),
            TextFormField(controller: leadController),
            SizedBox(height: 20.0),
            Text('Enter Center Name:'),
            TextFormField(controller: centerNameController),
            SizedBox(height: 20.0),
            Text('Enter Lead/Members:'),
            TextFormField(controller: membersController),
            SizedBox(height: 20.0),
            Text('Select Group Product:'),
            DropdownButton<String>(
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
            ),
            SizedBox(height: 20.0),
            Text('Select Weekly Option:'),
            DropdownButton<String>(
              value: selectedWeeklyOption,
              items: weeklyOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedWeeklyOption = value!;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement logic to create a new application
                print('New application created!');
              },
              child: Text('Create New Application'),
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
