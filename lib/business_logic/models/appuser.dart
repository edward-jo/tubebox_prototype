import 'package:google_sign_in/google_sign_in.dart';

class AppUser {
  AppUser(this.account, this.authentication);

  GoogleSignInAccount account;
  GoogleSignInAuthentication authentication;
}
