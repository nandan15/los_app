import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:los_app/components/auth_field.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final mpinController = TextEditingController();



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey[308],
      body: SafeArea(
        // child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // For Pattern

              Text(
                'MASTER PIN',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  ),
              ),

              const SizedBox(height: 25),

              AuthField(
                controller: mpinController,
                hintText: 'Master PIN',
                obscureText: true,
              ),

              const SizedBox(height: 10),

      ],
      ),
      // )
        )
        
      
    );
  }
}