import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:los_app/components/auth_field.dart';
import 'package:los_app/main.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final mpinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    MaterialPageRoute(builder: (context) => AuthPage()),
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
