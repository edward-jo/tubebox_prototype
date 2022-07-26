import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/ui/views/signin/signin_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              if (ret) {
                if (!mounted) return;
                Navigator.of(context).pushNamedAndRemoveUntil(
                  SignInScreen.routeName,
                  (route) => false,
                );
              }
            },
            child: const Text('Google Sign Out'),
          ),
        ],
      ),
    );
  }
}
