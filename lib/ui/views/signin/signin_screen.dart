import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Placeholder(),
          ElevatedButton(
            onPressed: () async {
              await context.read<AppUserViewModel>().signIn();
            },
            child: const Text('Google Sign In'),
          ),
        ],
      ),
    );
  }
}
