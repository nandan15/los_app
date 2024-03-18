import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Details'),
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
                      // Use Flexible widget to allow text wrapping
                      child: Text(
                        'Prospect Maintenance',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Flexible(
                      // Use Flexible widget to allow text wrapping
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
                  'Application Stage - Prospect Maintenance',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for Prospect button
                      },
                      child: Text('Prospect'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for Address button
                      },
                      child: Text('Address'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Address'),
                      TextFormField(),
                      SizedBox(height: 20),
                      Text('Location'),
                      TextFormField(),
                      SizedBox(height: 20),
                      Text('Village'),
                      TextFormField(),
                      SizedBox(height: 20),
                      Text('Area Category'),
                      TextFormField(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add functionality for Save button
                            },
                            child: Text('Save'),
                          ),
                          SizedBox(width: 20),
                          // Add widget for map upload
                          Placeholder(
                            color: Colors.grey,
                            fallbackHeight: 100,
                            fallbackWidth: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context)
                        .viewInsets
                        .bottom), // Adjust for keyboard
              ],
            ),
          ),
        ),
      ),
    );
  }
}
