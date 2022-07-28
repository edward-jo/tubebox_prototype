import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AppUser extends ChangeNotifier {
  GoogleSignInAccount? _account;

  GoogleSignInAccount? get account => _account;

  set account(GoogleSignInAccount? account) {
    _account = account;
    notifyListeners();
  }

  GoogleSignInAuthentication? _authentication;

  GoogleSignInAuthentication? get authentication => _authentication;

  set authentication(GoogleSignInAuthentication? authentication) {
    _authentication = authentication;
  }

  void currentUserChangedListener(GoogleSignInAccount? account) async {
    if (account != null) {
      this.account = account;
      authentication = await account.authentication;
    } else {
      this.account = null;
      authentication = null;
    }
    notifyListeners();
  }
}
