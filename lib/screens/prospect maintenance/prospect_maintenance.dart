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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            'Application Stage:Prospect Maintenance',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            '<CenterName>/New Center:00212345/march 21 2024',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          Text(
            'Prospect Maintenance: New Center and New Member',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Action for Prospect button
                },
                icon: Icon(Icons.person),
                label: Text('Prospect'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Action for Address button
                },
                icon: Icon(Icons.person),
                label: Text('Address'),
              ),
            ],
          ),
          SizedBox(height:20),
          Column(
            children: [
              SizedBox(height:20),
              Text('Processflow:NCNPF'),
              Text('FileNo:002112345'),
              Text('Branch:0002-mumbai'),
              Text('CenterName:<CenterName>'),
              Text('Member:2'),
              Text('FileDate:21/3/2024')
            ]
          )
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
