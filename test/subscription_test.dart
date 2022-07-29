import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tubebox_prototype/business_logic/models/subscription.dart';

void main() {
  test('Serialization Test of Subscription', () {
    final jsonObject = json.decode(_data);
    final serializable = Subscription.fromJson(jsonObject);
    final serialized = serializable.toJson();
    expect(serializable.contentDetails.totalItemCount, 328);
  });
}

final _data = r'''{
    "kind": "youtube#subscription",
"etag": "EKcjfyowF-b5iQ_FaZ10tRcQ73Y",
"id": "LyhA8l4H3JvYxXD4Tg1nxWrG0zVctdKmX30PJp94d9s",
"snippet": {
"publishedAt": "2020-10-14T11:48:58.686923Z",
"title": "Flutter",
"description": "Welcome to the official Flutter YouTube channel. Subscribe to stay up to date with best practices about the Flutter SDK. See real code examples, and watch engineers from around the world putting Flutter to work! \n\nSubscribe to the Flutter channel → https://goo.gle/FlutterYT\n\nFlutter is a mobile app SDK for both iOS, and Android developed at Google with continued support from the global community. Flutter works with existing code, is used by developers, organizations around the world, and is free, and open source.\n\nVisit our website to learn more → https://flutter.dev/\nFollow us on Twitter → https://twitter.com/FlutterDev\nYouTube → https://flutter.dev/youtube",
"resourceId": {
"kind": "youtube#channel",
"channelId": "UCwXdFgeE9KYzlDdR7TG9cMw"
},
"channelId": "UCu5nYbDUsH008WSUkEJYblA",
"thumbnails": {
"default": {
"url": "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s88-c-k-c0x00ffffff-no-rj"
},
"medium": {
"url": "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s240-c-k-c0x00ffffff-no-rj"
},
"high": {
"url": "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s800-c-k-c0x00ffffff-no-rj"
}
}
},
"contentDetails": {
"totalItemCount": 328,
"newItemCount": 0,
"activityType": "all"
}
}''';
