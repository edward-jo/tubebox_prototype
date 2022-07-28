import 'package:flutter/material.dart';
import 'package:tubebox_prototype/services/service_locator.dart';
import 'package:tubebox_prototype/services/youtube_service/youtube_data_service.dart';

class SubscriptionsViewModel extends ChangeNotifier {
  final _youTubeService = serviceLocator<YouTubeDataService>();

  Future<String> getSubscriptionList(String accessToken) async {
    return await _youTubeService.fetchSubscriptions(accessToken);
  }
}
