import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
}
