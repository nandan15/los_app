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
  String? _selectedLoanSchemeId;
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController2 = TextEditingController();
  final TextEditingController phoneController2 = TextEditingController();
  String residentialAddress = '';
  String residentialPhone = '';
  String shippingAddress = '';
  String shippingPhone = '';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Activity"),
        ),
        body: SafeArea(
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
              Text(
                'BR Net Submission',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'New Center and New Member Process Flow',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 20),
              Text(
                'Application Stage - Quick Data Entry',
                style: TextStyle(fontSize: 18),
              ),
              TabBar(
                tabs: [
                  Tab(text: 'Profile'),
                  Tab(text: 'Loan Details'),
                  Tab(text: 'Address'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Profile Tab
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Profile fields
                            Row(
                              children: [
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
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                ),
                              ],
                            ),
                            // Continue adding fields related to Profile
                            SizedBox(height: 20),
                            // First Name Text Field
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
                            // Middle Name Text Field
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
                            // DOB Text Field
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
                            // Gender Dropdown
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
                                  items: <String>[
                                    'Female',
                                    'Male',
                                    'Others'
                                  ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                ),
                              ],
                            ),
                            // Marital Status Text Field
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Marital Status',
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
                            // Spouse Name Text Field
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Spouse Name',
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
                            // Literacy Dropdown
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
                                  ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                ),
                              ],
                            ),
                            // ID Type 1 Text Field
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
                            // ID Number Text Field
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
                            // ID Type 2 Text Field
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
                            // ID Number Text Field
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
                            // Religion Text Field
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
                            // Caste Text Field
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
                          ],
                        ),
                      ),
                    ),
                    // Loan Details Tab
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Client loan Cycle Member',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Client ID',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // loan scheme Id
                            Row(
                              children: <Widget>[
                                Text(
                                  'loan scheme Id',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 110),
                                DropdownButton<String>(
                                  value: _selectedLoanSchemeId,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedLoanSchemeId = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'scheme1',
                                    'scheme2',
                                    'scheme3',
                                    'scheme4'
                                  ].map<DropdownMenuItem<String>>(
                                          (String value) {
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
                                  'Expect loan Amount',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 60),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Expect loan Amount',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Expect Term',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 125),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Expect Term',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Expect Repayment Term',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 30),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Expect Repayment Term',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Template Schedule',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 70),
                                DropdownButton<String>(
                                  value: 'Template Schedule1', // Set a default value or initialize to null
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      // Update the value here
                                    });
                                  },
                                  items: <String>['Template Schedule1', 'Template Schedule2']
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
                                  'Loan Category',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 110),
                                DropdownButton<String>(
                                  value: 'Category1', // Set a default value or initialize to null
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      // Update the value here
                                    });
                                  },
                                  items: <String>['Category1', 'Category2']
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
                                  'Purpose',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 160),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Purpose',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Disbursement Mode',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 65),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Disbursement Mode',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Repayment Mode',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 85),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Repayment Mode',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Repayment Frequency',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 50),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Repayment Frequency',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Repayment Frequency',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 50),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Repayment Frequency',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Repayment Frequency',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 50),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Repayment Frequency',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Address Tab
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 400, // Adjust the height as needed
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: _buildAddressSection(
                                        title: 'Residential Address',
                                        addressController: addressController,
                                        phoneController: phoneController,
                                        addressValue: residentialAddress,
                                        phoneValue: residentialPhone,
                                        onAddressChanged: (value) {
                                          setState(() {
                                            residentialAddress = value;
                                          });
                                        },
                                        onPhoneChanged: (value) {
                                          setState(() {
                                            residentialPhone = value;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 20), // Add height between sections
                                    Expanded(
                                      child: _buildAddressSection(
                                        title: 'Shipping Address',
                                        addressController: addressController2,
                                        phoneController: phoneController2,
                                        addressValue: shippingAddress,
                                        phoneValue: shippingPhone,
                                        onAddressChanged: (value) {
                                          setState(() {
                                            shippingAddress = value;
                                          });
                                        },
                                        onPhoneChanged: (value) {
                                          setState(() {
                                            shippingPhone = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddressSection({
    required String title,
    required TextEditingController addressController,
    required TextEditingController phoneController,
    required String addressValue,
    required String phoneValue,
    required ValueChanged<String> onAddressChanged,
    required ValueChanged<String> onPhoneChanged,
  }) {
    return DataTable(
      columns: [
        DataColumn(label: Text('')),
        DataColumn(label: Text('')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text(title)),
            DataCell(Text('Phone')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: 'Enter address',
                contentPadding: EdgeInsets.only(
                  bottom: 10.0,
                ),
              ),
              onChanged: onAddressChanged,
            )),
            DataCell(TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Enter phone number',
                contentPadding: EdgeInsets.only(
                  bottom: 10.0,
                ),
              ),
              onChanged: onPhoneChanged,
            )),
          ],
        ),
      ],
    );
  }
}
