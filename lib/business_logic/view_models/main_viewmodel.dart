import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/services/youtube_service/youtube_data_service.dart';

class MainViewModel extends ChangeNotifier {
  final _googleSignIn = serviceLocator<GoogleSignIn>();
  final _youTubeService = serviceLocator<YouTubeDataService>();

  Future<String> getSubscriptionList(String accessToken) async {
    return await _youTubeService.fetchSubscriptions(accessToken);
  }

  Future<bool> signOut() async {
    GoogleSignInAccount? account = await _googleSignIn.signOut();
    if (account != null) {
      developer.log('Failed to sign out.');
      return false;
    }
    return true;
  }
}
