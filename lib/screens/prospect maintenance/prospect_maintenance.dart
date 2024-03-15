import 'package:flutter/material.dart';

class ProspectMaintenance extends StatefulWidget {
  @override
  _ProspectMaintenanceState createState() => _ProspectMaintenanceState();
}

class _ProspectMaintenanceState extends State<ProspectMaintenance> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Activity Details"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Prospect'),
              Tab(text: 'Address'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text('Processflow:NCNPF'),
                    Text('FileNo:002112345'),
                    Text('Branch:0002-mumbai'),
                    Text('CenterName:<CenterName>'),
                    Text('Member:2'),
                    Text('FileDate:21/3/2024'),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  ],
                ),
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
    home: ProspectMaintenance(),
  ));
}
