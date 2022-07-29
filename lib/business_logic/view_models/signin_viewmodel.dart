import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/services/service_locator.dart';

class SignInViewModel extends ChangeNotifier {
  final _googleSignIn = serviceLocator<GoogleSignIn>();

  Future<bool> signIn(
    void Function(GoogleSignInAccount? account)? listenerCallback,
  ) async {
    _googleSignIn.onCurrentUserChanged.listen(listenerCallback);
    GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account == null) {
      developer.log('Failed to sign in.');
      return false;
    }
    return true;
  }
}
