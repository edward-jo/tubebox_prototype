import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/ui/views/main/main_screen.dart';
import 'package:tubebox_prototype/ui/views/signin/signin_screen.dart';
import 'package:tubebox_prototype/ui/widgets/styled_builder_error_message.dart';
import 'package:tubebox_prototype/ui/widgets/styled_builder_indicator.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    AppUserViewModel vm = context.read<AppUserViewModel>();
    Future<bool> autoSignInFuture = vm.autoSignIn();
    return FutureBuilder(
      future: autoSignInFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const StyledBuilderIndicator();
        }

        if (snapshot.hasError) {
          return StyledBuilderErrorMessage(
            message: snapshot.error.toString(),
          );
        }

        final isSignedIn = snapshot.data as bool;
        if (!isSignedIn) {
          return const SignInScreen();
        }

        return const MainScreen();
      },
    );
  }
}
