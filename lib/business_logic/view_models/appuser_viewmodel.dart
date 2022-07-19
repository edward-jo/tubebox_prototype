import 'package:flutter/material.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';

class AppUserViewModel extends ChangeNotifier {
  // signIn
  Future<AppUser?> signIn() async {}

  // signOut
  Future<AppUser?> signOut() async {}

  // isSignedIn
  Future<bool> isSignedIn() async => true;
}
