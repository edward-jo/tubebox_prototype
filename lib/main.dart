import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/secure.dart';
import 'package:tubebox_prototype/ui/themes/theme.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  clientId: webClientId,
  scopes: <String>[
    'https://www.googleapis.com/auth/youtube',
    'https://www.googleapis.com/auth/youtube.readonly',
  ],
);

void main() async {
  /// Load environment variables
  await dotenv.load();

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) async {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        final authentication = await _currentUser!.authentication;
        final accessToken = authentication.accessToken;
        developer.log('access token: $accessToken');
      }
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: TextButton(
          onPressed: _signIn,
          child: const Text('Sign In'),
        ),
      ),
    );
  }

  void _signIn() async {
    await _googleSignIn.signIn();
  }
}
