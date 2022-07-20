import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/ui/themes/theme.dart';
import 'package:tubebox_prototype/ui/views/startup/startup_screen.dart';

void main() async {
  /// Load environment variables
  await dotenv.load();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TubeBox',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const StartUpScreen(),
    );
  }
}
