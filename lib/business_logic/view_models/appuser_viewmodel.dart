import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';
import 'package:tubebox_prototype/services/service_locator.dart';

class AppUserViewModel extends ChangeNotifier {
  final _googleSignIn = serviceLocator<GoogleSignIn>();

  AppUser? _appUser;
  AppUser? get appUser => _appUser;

  StreamSubscription? _userChangeSubscription;

  void _setGoogleSignInListener() {
    _delGoogleSignInListener();
    _userChangeSubscription = _googleSignIn.onCurrentUserChanged.listen(
      (account) {
        _appUser = (account != null) ? AppUser(account) : null;
        developer.log('account: ${account?.displayName}');
        notifyListeners();
      },
    );
  }

  void _delGoogleSignInListener() {
    if (_userChangeSubscription != null) {
      _userChangeSubscription!.cancel();
      _userChangeSubscription = null;
    }
  }

  Future<bool> autoSignIn() async {
    _setGoogleSignInListener();
    GoogleSignInAccount? account = await _googleSignIn.signInSilently();
    if (account == null) {
      return false;
    }

    return true;
  }

  Future<bool> signIn() async {
    _setGoogleSignInListener();
    GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account == null) {
      developer.log('Failed to sign in.');
      return false;
    }
    return true;
  }

  Future<bool> signOut() async {
    GoogleSignInAccount? account = await _googleSignIn.signOut();
    if (account != null) {
      developer.log('Failed to sign out.');
      return false;
    }
    return true;
  }

  Future<bool> isSignedIn() async {
    _setGoogleSignInListener();
    return await _googleSignIn.isSignedIn();
  }
}
