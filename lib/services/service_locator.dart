import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/secure.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerSingleton<GoogleSignIn>(
    GoogleSignIn(
      clientId: webClientId,
      scopes: <String>[
        'https://www.googleapis.com/auth/youtube',
        'https://www.googleapis.com/auth/youtube.readonly',
      ],
    ),
  );
  serviceLocator.registerSingleton<AppUserViewModel>(AppUserViewModel());
}
