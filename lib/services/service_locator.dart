import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/business_logic/models/appuser.dart';
import 'package:tubebox_prototype/business_logic/view_models/main_viewmodel.dart';
import 'package:tubebox_prototype/business_logic/view_models/signin_viewmodel.dart';
import 'package:tubebox_prototype/business_logic/view_models/startup_viewmodel.dart';
import 'package:tubebox_prototype/secure.dart';
import 'package:tubebox_prototype/services/youtube_service/youtube_data_service.dart';
import 'package:tubebox_prototype/services/youtube_service/youtube_data_service_impl.dart';

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
  // App User
  serviceLocator.registerSingleton<AppUser>(AppUser());
  // Services
  serviceLocator.registerSingleton<YouTubeDataService>(
    YouTubeDataServiceImpl(),
  );
  // View Models
  serviceLocator.registerSingleton<StartUpViewModel>(StartUpViewModel());
  serviceLocator.registerSingleton<SignInViewModel>(SignInViewModel());
  serviceLocator.registerSingleton<MainViewModel>(MainViewModel());
}
