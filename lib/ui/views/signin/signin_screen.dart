import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';
import 'package:tubebox_prototype/business_logic/view_models/signin_viewmodel.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/ui/views/main/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const routeName = '/signin';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final signInVM = serviceLocator<SignInViewModel>();

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return ChangeNotifierProvider.value(
      value: signInVM,
      child: Consumer<SignInViewModel>(
        builder: (context, vm, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Placeholder(),
              ElevatedButton(
                onPressed: () async {
                  final ret = await vm.signIn(
                    appUser.currentUserChangedListener,
                  );
                  if (ret) {
                    if (!mounted) return;
                    Navigator.of(context).pushNamed(MainScreen.routeName);
                  }
                },
                child: const Text('Google Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
