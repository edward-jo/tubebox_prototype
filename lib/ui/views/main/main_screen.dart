import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/business_logic/view_models/subscriptions_viewmodel.dart';
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
    final appUserVM = context.read<AppUserViewModel>();
    final subscriptionVM = context.read<SubscriptionsViewModel>();
    final appUser = appUserVM.appUser;
    final accessToken = appUser?.authentication.accessToken;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appUser?.account.displayName ?? ''),
            Text(appUser?.authentication.accessToken ?? ''),
            const SizedBox(height: 20),
            // -- GET SUBSCRIPTIONS
            ElevatedButton(
              onPressed: () async {
                await subscriptionVM.getSubscriptionList(
                  accessToken!,
                );
              },
              child: const Text('Get Subscriptions'),
            ),
            // --
            const SizedBox(height: 20),
            // -- Sign Out
            ElevatedButton(
              onPressed: () async {
                final ret = await appUserVM.signOut();
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
  }
}
