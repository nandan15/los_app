import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? _selectedGender = 'Female';
  String? _selectedLiteracyLevel = 'Primary';
  String? _selectedIDType1 = 'Type 1';
  String? _selectedIDType2 = 'Type 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
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
                  'Application Stage - Quick Data Entry',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                            child: Text(
                              'Profile',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Loan Details',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Address',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),
                // Title Dropdown
                Row(
                  children: <Widget>[
                    Text(
                      'Title',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 20),
                    DropdownButton<String>(
                      value: 'Mr.',
                      onChanged: (String? newValue) {
                        setState(() {
                          // Update your value here
                        });
                      },
                      items: <String>['Mr.', 'Mrs.', 'Miss', 'Dr.']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),

                // First Name Text Field
                SizedBox(height: 20),

                Row(
                  children: <Widget>[
                    Text(
                      'First Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter first name',
                        ),
                      ),
                    ),
                  ],
                ),

                // Last Name Text Field
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Last Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter last name',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Middle Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Middle Name',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'DOB',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 100),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'dd/mm/yyyy',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Gender',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 80),
                    DropdownButton<String>(
                      value: _selectedGender,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedGender = newValue;
                        });
                      },
                      items: <String>['Female', 'Male', 'Others']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Marital Status ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Single',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Spouse Name ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'ABC',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Literacy',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 80),
                    DropdownButton<String>(
                      value: _selectedLiteracyLevel,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedLiteracyLevel = newValue;
                        });
                      },
                      items: <String>[
                        'Primary',
                        'Secondary',
                        'Higher Secondary',
                        'Graduate',
                        'Post Graduate'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'ID Type 1',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Aadhar',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'ID Number',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 60),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '1232323',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'ID Type 2',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 70),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Pan Card',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'ID Number',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 60),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '123434',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Religion',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 80),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Hindu',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Caste',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 100),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'OBC',
                        ),
                      ),
                    ),
                  ],
                ),
                // ID Type 1 Text Field and ID Number Text Field
                // Similar structure as First Name with TextFormField for both

                // ID Type 2 Text Field and ID Number Text Field
                // Similar structure as First Name with TextFormField for both

                // Religion Text Field
                // Similar structure as First Name with TextFormField

                // Caste Text Field
                // Similar structure as First Name with TextFormField
              ],
            ),
          ),
        ),
      ),
    );
  }
}
