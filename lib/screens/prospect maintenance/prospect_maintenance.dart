import 'package:flutter/material.dart';

class ActivityDetails extends StatefulWidget {
  @override
  _ActivityDetailsState createState() => _ActivityDetailsState();
}

class _ActivityDetailsState extends State<ActivityDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity Details"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Applicationstage:Prospectnaintenance'),
        Text('<CenterName>/New Center: 00212345/mar3120024'),
        Text('Prospect Maintenance:New Center and New member Process flow'),
        Text('Process flow: NCNPF'),
        Text('File No:00212345'),
        Text('Branch:0002-mumbai'),
        Text('CenterName:<CenterName>'),
        Text('Members:2'),
        Text('File Date:31/03/2024'),

      ]),
    );
  }
}
