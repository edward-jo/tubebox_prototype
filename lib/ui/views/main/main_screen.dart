import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Placeholder(),
          ElevatedButton(
            onPressed: () async {
              final ret = await context.read<AppUserViewModel>().signOut();
              developer.log('ret: ${ret.toString()}');
            },
            child: const Text('Google Sign Out'),
          ),
        ],
      ),
    );
  }
}
