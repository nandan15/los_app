// import 'package:flutter/material.dart';
//
// class LoanDetails extends StatefulWidget {
//   @override
//   _LoanDetailsState createState() => _LoanDetailsState();
// }
//
// class _LoanDetailsState extends State<LoanDetails> {
//   String? _selectedLoanSchemeId;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Loan Details'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height: 20),
//           Table(
//             border: TableBorder.all(),
//             children: [TableRow(
//               children: [
//                 TableCell(
//                   child: Center(child: Text('Profile',
//                   style: TextStyle(fontSize: 18),
//                   ),
//                   ),
//                 ),
//                  TableCell(
//                   child: Center(child: Text('Loan Details',
//                   style: TextStyle(fontSize: 18),
//                   ),
//                   ),
//                 ),
//                 TableCell(
//                   child: Center(child: Text('Address',
//                   style: TextStyle(fontSize: 18),
//                   ),
//                   ),
//                 ),
//               ],
//             ),],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Client loan Cycle Member',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Client ID',
//                   ),
//                 )
//               )
//             ],
//             ),
//           //loan id
//                 SizedBox(height: 20),
//                 // Title Dropdown
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       'loan scheme Id',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     SizedBox(width: 20),
//                     DropdownButton<String>(
//                       value: 'loan scheme Id',
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           // Update your value here
//                         });
//                       },
//                       items: <String>['loan scheme Id', 'loan scheme Id', 'loan scheme Id', 'loan scheme Id']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//            SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Expect loan Amount',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Expect loan Amount',
//                   ),
//                 )
//               )
//             ],
//           ),
//            SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Expect Term',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Expect Term',
//                   ),
//                 )
//               )
//             ],
//           ),
//            SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Expect Repayment Term',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Expect Repayment Term',
//                   ),
//                 )
//               )
//             ],
//           ),
//            SizedBox(height: 20),
//                 // Title Dropdown
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       'Template Schedule',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     SizedBox(width: 20),
//                     DropdownButton<String>(
//                       value: 'Template Schedule',
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           // Update your value here
//                         });
//                       },
//                       items: <String>['Template Schedule', 'Template Schedule', ]
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//                  SizedBox(height: 20),
//                 // Title Dropdown
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       'Loan Category',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     SizedBox(width: 20),
//                     DropdownButton<String>(
//                       value: 'Loan Category',
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           // Update your value here
//                         });
//                       },
//                       items: <String>['Template Schedule', 'Template Schedule', ]
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Purpose',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Purpose',
//                   ),
//                 )
//               )
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Disbursement Mode',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Disbursement Mode',
//                   ),
//                 )
//               )
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Repayment Mode',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Repayment Mode',
//                   ),
//                 )
//               )
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Repayment Frequency',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Repayment Frequency',
//                   ),
//                 )
//               )
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Repayment Frequency',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Repayment Frequency',
//                   ),
//                 )
//               )
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: <Widget>[
//               Text(
//                 'Repayment Frequency',
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(width: 50),
//               Expanded(
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Repayment Frequency',
//                   ),
//                 )
//               )
//             ],
//           ),
//
//
//
//               ],
//             ),
//             SizedBox(height: 20),
//             // loan scheme Id
//             Row(
//               children: <Widget>[
//                 Text(
//                   'loan scheme Id',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 20),
//                 DropdownButton<String>(
//                   value: _selectedLoanSchemeId,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _selectedLoanSchemeId = newValue;
//                     });
//                   },
//                   items: <String>[
//                     'scheme1',
//                     'scheme2',
//                     'scheme3',
//                     'scheme4'
//                   ].map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Expect loan Amount',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Expect loan Amount',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Expect Term',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Expect Term',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Expect Repayment Term',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Expect Repayment Term',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Template Schedule',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 20),
//                 DropdownButton<String>(
//                   value: 'Template Schedule1', // Set a default value or initialize to null
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       // Update the value here
//                     });
//                   },
//                   items: <String>['Template Schedule1', 'Template Schedule2']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Loan Category',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 20),
//                 DropdownButton<String>(
//                   value: 'Category1', // Set a default value or initialize to null
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       // Update the value here
//                     });
//                   },
//                   items: <String>['Category1', 'Category2']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Purpose',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter Purpose',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Disbursement Mode',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter Disbursement Mode',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Repayment Mode',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Repayment Mode',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Repayment Frequency',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter Repayment Frequency',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Repayment Frequency',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter Repayment Frequency',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 Text(
//                   'Repayment Frequency',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Enter Repayment Frequency',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             // Add more rows and form fields as needed...
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
