import 'dart:developer' as developer;

import 'package:flutter/material.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Placeholder(),
          ElevatedButton(
            onPressed: () => developer.log('Pressed'),
            child: const Text('Google Sign In'),
          ),
        ],
      ),
    );
  }
}
