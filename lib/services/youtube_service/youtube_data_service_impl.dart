import 'dart:developer' as developer;

import 'package:http/http.dart' as http;
import 'package:tubebox_prototype/services/youtube_service/youtube_data_service.dart';

class YouTubeDataServiceImpl implements YouTubeDataService {
  final _host = 'youtube.googleapis.com';

  @override
  Future<String> fetchSubscriptions(String accessToken) async {
    final uri = Uri.https(_host, 'youtube/v3/subscriptions', {
      'part': 'snippet,contentDetails',
      'mine': 'true',
      // 'key':
    });

    Map<String, String> headers = {
      'Authorization': 'Bearer $accessToken',
      'Accept': 'application/json',
    };

    final response = await http.get(uri, headers: headers);
    developer.log('Subscriptions response: \n${response.body.toString()}');
    if (response.statusCode != 200) {
      // TODO: throw exception.
    }

    // TODO: return result.
    return response.body.toString();
  }
}
