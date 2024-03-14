import 'package:flutter/material.dart';

void main() {
  runApp(NewApplicationScreenApp());
}

class NewApplicationScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Member files',
      theme: ThemeData(),
      home: NewApplicationScreen(),
    );
  }
}

class NewApplicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member files'),
      ),
      body: Center(
        child: Container(
          height: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            // child: Container(

            border: Border.all(color: Colors.redAccent),
          ),
          child: Table(
              defaultColumnWidth: FixedColumnWidth(150.0),
              children: const [
                TableRow(
                  // decoration: BoxDecoration(color: Colors.blueAccent),
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('Center Details',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),

                    TableCell(
                      child: Center(
                        child: Text('EIA GLOBAL',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    // TableCell(
                    //   child: Center(child: Text('Cell 3')),
                    // ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child:
                            Text('Center Type', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child:
                            Text('New Center', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // TableCell(
                    //   child: Center(child: Text('Cell 3')),
                    // ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('File Details',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('00212345 / Mar 31 2024',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // TableCell(
                    //   child: Center(child: Text('Cell 3')),
                    // ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('Activity Details',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('Quick Data Entity',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // TableCell(
                    //   child: Center(child: Text('Cell 3')),
                    // ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Text('Process', style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('New Center and New Member process flow',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // TableCell(
                    //   child: Center(child: Text('Cell 3')),
                    // ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
