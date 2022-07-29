import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/services/service_locator.dart';

class StartUpViewModel extends ChangeNotifier {
  final _googleSignIn = serviceLocator<GoogleSignIn>();

  Future<bool> autoSignIn(
    void Function(GoogleSignInAccount? account)? listenerCallback,
  ) async {
    _googleSignIn.onCurrentUserChanged.listen(listenerCallback);
    GoogleSignInAccount? account = await _googleSignIn.signInSilently();
    if (account == null) {
      return false;
    }
    return true;
  }
}
