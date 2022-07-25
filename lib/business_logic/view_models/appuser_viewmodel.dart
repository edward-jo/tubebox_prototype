import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';
import 'package:tubebox_prototype/services/service_locator.dart';

class AppUserViewModel extends ChangeNotifier {
  final _googleSignIn = serviceLocator<GoogleSignIn>();
  AppUser? _appUser;

  Future<AppUser?> signIn() async {
    GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account == null) {
      developer.log('Failed to sign in.');
      return null;
    }
    _appUser = AppUser(account);
    return _appUser;
  }

  Future<AppUser?> signOut() async {
    GoogleSignInAccount? account = await _googleSignIn.signOut();
    if (account != null) {
      developer.log('Failed to sign out.');
      return _appUser;
    }
    _appUser = null;
    return _appUser;
  }

  Future<bool> isSignedIn() async => await _googleSignIn.isSignedIn();
}
