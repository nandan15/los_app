import 'package:flutter/material.dart';
import 'package:los_app/components/auth_field.dart';
import 'package:los_app/screens/branchlist/branch_listingpage.dart';

import '../loan details/loan_details.dart';

class AuthScreen extends StatefulWidget {
  @override
  AuthPage createState() => AuthPage();
}

class AuthPage extends State<AuthScreen> {
  // AuthPage({super.key});

  final mpinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Authentication'),
        ),
        backgroundColor: Colors.grey[308],
        body: SafeArea(
          // child: Center(
          child: Column(
            children: [
              HeaderSection(),
              const SizedBox(height: 50),

              // For Pattern

              Text(
                'Mobile PIN',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 25),

              AuthField(
                controller: mpinController,
                hintText: 'Mobile PIN',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your authentication logic here (e.g., check credentials)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoanDetails()),
                  );
                },
                child: Text('Forgot MPIN'),
              ),
              // const SizedBox(height: 360),
              // FooterSection(),
            ],
          ),
          // )
        ));
  }
}
