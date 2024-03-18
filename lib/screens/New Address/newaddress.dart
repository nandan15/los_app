import 'package:flutter/material.dart';

class NewAddress extends StatefulWidget {
  @override
  NewAddressScreen createState() => NewAddressScreen();
}

class NewAddressScreen extends State<NewAddress> {
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController2 = TextEditingController();
  TextEditingController phoneController2 = TextEditingController();

  String residentialAddress = '';
  String residentialPhone = '';
  String shippingAddress = '';
  String shippingPhone = '';

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    addressController.dispose();
    phoneController.dispose();
    addressController2.dispose();
    phoneController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
