// header_screen.dart

import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Your App Name'),
      actions: [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigate to the home page or perform any other action
          },
        ),
      ],
    );
  }
}
