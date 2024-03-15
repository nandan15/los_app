import 'package:flutter/material.dart';

class LoanDetails extends StatefulWidget {
  @override
  _LoanDetailsState createState() =>  _LoanDetailsState();
}

class  _LoanDetailsState extends State<LoanDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          SizedBox(height: 20),
          Divider(),
          // fffgg
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            //hjghgjgj
            Container(
              child: Row(
                children: [
                  Text('Profile      LoanDetails   Addresss'),
                ],),
            )
           ],
          ),
          SizedBox(height: 20),
          Divider(),
        ],
      )
    );
  }
}