import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/ui/themes/theme.dart';
import 'package:tubebox_prototype/ui/views/main/main_screen.dart';
import 'package:tubebox_prototype/ui/views/signin/signin_screen.dart';
import 'package:tubebox_prototype/ui/views/signin/signin_screen_routebuilder.dart';
import 'package:tubebox_prototype/ui/views/startup/startup_screen.dart';

void main() async {
  /// Load environment variables
  await dotenv.load();

  /// Create service locator
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: serviceLocator<AppUserViewModel>(),
        ),
      ],
      child: MaterialApp(
        title: 'TubeBox',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: const StartUpScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            // -- SIGN-IN SCREEN
            case SignInScreen.routeName:
              return SignInScreenRouteBuilder(
                settings: settings,
                child: const SignInScreen(),
              );
            // -- MAIN SCREEN
            case MainScreen.routeName:
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => const MainScreen(),
              );
            default:
              return null;
          }
        },
      ),
    );
  }
}
