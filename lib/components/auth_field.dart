import 'package:flutter/material.dart';
import 'package:los_app/screens/branchlist/branch_listingpage.dart';

class AuthField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const AuthField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: hintText,
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Branchlisting()));
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
