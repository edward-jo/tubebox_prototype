import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';
import 'package:tubebox_prototype/business_logic/view_models/main_viewmodel.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/ui/views/signin/signin_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = '/main';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final viewmodel = serviceLocator<MainViewModel>();

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();
    final accessToken = appUser.authentication?.accessToken;

    return ChangeNotifierProvider.value(
      value: viewmodel,
      child: Consumer<MainViewModel>(
        builder: (context, vm, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(appUser.account?.displayName ?? ''),
                  Text(appUser.authentication?.accessToken ?? ''),
                  const SizedBox(height: 20),
                  // -- GET SUBSCRIPTIONS
                  ElevatedButton(
                    onPressed: () async {
                      await vm.getSubscriptionList(accessToken!);
                    },
                    child: const Text('Get Subscriptions'),
                  ),
                  // --
                  const SizedBox(height: 20),
                  // -- Sign Out
                  ElevatedButton(
                    onPressed: () async {
                      final ret = await vm.signOut();
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
            ),
          );
        },
      ),
    );
  }
}
