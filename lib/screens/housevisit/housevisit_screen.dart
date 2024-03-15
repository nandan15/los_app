import 'package:flutter/material.dart';

class HouseVisitScreen extends StatefulWidget {
  @override
  HouseVisitScreenApp createState() => HouseVisitScreenApp();
}

class HouseVisitScreenApp extends State<HouseVisitScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('House Visit'),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your button 1 onPressed functionality here
                },
                child: Text('In Progress'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your button 2 onPressed functionality here
                },
                child: Text('Completed'),
              ),
            ],
          ),
          // SizedBox(height: 10),
          SizedBox(
            height: 195,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('RAM')),
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Loan Amount')),
                      DataCell(Text('30000')),
                      DataCell(
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked1,
                              onChanged: (bool? value) {
                                // Some method
                                setState(() {
                                  isChecked1 = value!;
                                });
                              },
                            ),
                            Text(isChecked1 ? 'Visted' : 'Not Visited'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Long Term')),
                      DataCell(Text('40')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Visited By')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 10),
          SizedBox(
            height: 195,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('SHYAM')),
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Loan Amount')),
                      DataCell(Text('30000')),
                      DataCell(
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked2,
                              onChanged: (bool? value) {
                                // Some method
                                setState(() {
                                  isChecked2 = value!;
                                });
                              },
                            ),
                            Text(isChecked2 ? 'Visted' : 'Not Visited'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Long Term')),
                      DataCell(Text('30')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Visited By')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 10),
          SizedBox(
            height: 195,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('RADHE')),
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Loan Amount')),
                      DataCell(Text('20000')),
                      DataCell(
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked3,
                              onChanged: (bool? value) {
                                // Some method
                                setState(() {
                                  isChecked3 = value!;
                                });
                              },
                            ),
                            Text(isChecked3 ? 'Visted' : 'Not Visited'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Long Term')),
                      DataCell(Text('20')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Visited By')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 10),
          SizedBox(
            height: 195,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('LAXMAN')),
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Loan Amount')),
                      DataCell(Text('30000')),
                      DataCell(
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked4,
                              onChanged: (bool? value) {
                                // Some method
                                setState(() {
                                  isChecked4 = value!;
                                });
                              },
                            ),
                            Text(isChecked4 ? 'Visted' : 'Not Visited'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Long Term')),
                      DataCell(Text('40')),
                      DataCell(Text('')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Visited By')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
