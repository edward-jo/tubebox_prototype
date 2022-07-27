import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/business_logic/view_models/appuser_viewmodel.dart';
import 'package:tubebox_prototype/business_logic/view_models/subscriptions_viewmodel.dart';
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
  serviceLocator.registerSingleton<YouTubeDataService>(
    YouTubeDataServiceImpl(),
  );
  serviceLocator.registerSingleton<AppUserViewModel>(
    AppUserViewModel(),
  );
  serviceLocator.registerSingleton<SubscriptionsViewModel>(
    SubscriptionsViewModel(),
  );
}
