import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/ui/widgets/styled_builder_error_message.dart';
import 'package:tubebox_prototype/ui/widgets/styled_builder_indicator.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppUserViewModel vm = context.read<AppUserViewModel>();
    Future<bool> isSignedInFuture = vm.isSignedIn();
    return FutureBuilder(
      future: isSignedInFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const StyledBuilderIndicator();
        }

        if (snapshot.hasError) {
          return StyledBuilderErrorMessage(
            message: snapshot.error.toString(),
          );
        }

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
      },
    );
  }
}
