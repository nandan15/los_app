import 'package:flutter/material.dart';

class ProspectMaintenance extends StatefulWidget {
  @override
  _ProspectMaintenanceState createState() => _ProspectMaintenanceState();
}

class _ProspectMaintenanceState extends State<ProspectMaintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bangalore',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0002283/Mar 21 2024',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Prospect Maintenance',
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
                SizedBox(height: 5),
                Text(
                  'Application Stage - Prospect Maintenance',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Prospect'),
                      Tab(text: 'Address'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProspectMaintenance(),
  ));
}
