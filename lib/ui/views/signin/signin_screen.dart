import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/ui/views/main/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const routeName = '/signin';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Placeholder(),
          ElevatedButton(
            onPressed: () async {
              final ret = await context.read<AppUserViewModel>().signIn();
              if (ret) {
                if (!mounted) return;
                Navigator.of(context).pushNamed(MainScreen.routeName);
              }
            },
            child: const Text('Google Sign In'),
          ),
        ],
      ),
    );
  }
}
