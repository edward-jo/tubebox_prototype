import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tubebox_prototype/business_logic/models/subscription_list_response.dart';

void main() {
  test('Serialization Test of Subscription List Response', () {
    final jsonObject = json.decode(_data);
    final serializable = SubscriptionListResponse.fromJson(jsonObject);
    final serialized = serializable.toJson();
    expect(serializable.items.last.contentDetails.totalItemCount, 167);
  });
}

final _data = r'''
{
  "kind": "youtube#SubscriptionListResponse",
  "etag": "cK4VCbT08vmC0HnSnTG8QOAgRhE",
  "nextPageToken": "CAUQAA",
  "pageInfo": {
    "totalResults": 196,
    "resultsPerPage": 5
  },
  "items": [
    {
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
    },
    {
      "kind": "youtube#subscription",
      "etag": "80hbqeOkHbl_DE0xBi4Gn8p_0j0",
      "id": "LyhA8l4H3JvN5U_arrQAG_Gv1e1UJMysqexjH8q1j5Y",
      "snippet": {
        "publishedAt": "2020-11-13T13:07:22.346973Z",
        "title": "스터디언",
        "description": "자기계발에 진심인 공부인들이 모인 곳 [스터디언]\n\n비즈니스 문의: info@changeground.com",
        "resourceId": {
          "kind": "youtube#channel",
          "channelId": "UCtfGLmp6xMwvPoYpI-A5Kdg"
        },
        "channelId": "UCu5nYbDUsH008WSUkEJYblA",
        "thumbnails": {
          "default": {
            "url": "https://yt3.ggpht.com/QDrVYiq_fur90wmqekl-SH6c9otjJiiK7c44-5EWjR0H7jv8gn4OFzGHDR_xtCj6I3yZCQJwXQ=s88-c-k-c0x00ffffff-no-rj"
          },
          "medium": {
            "url": "https://yt3.ggpht.com/QDrVYiq_fur90wmqekl-SH6c9otjJiiK7c44-5EWjR0H7jv8gn4OFzGHDR_xtCj6I3yZCQJwXQ=s240-c-k-c0x00ffffff-no-rj"
          },
          "high": {
            "url": "https://yt3.ggpht.com/QDrVYiq_fur90wmqekl-SH6c9otjJiiK7c44-5EWjR0H7jv8gn4OFzGHDR_xtCj6I3yZCQJwXQ=s800-c-k-c0x00ffffff-no-rj"
          }
        }
      },
      "contentDetails": {
        "totalItemCount": 3687,
        "newItemCount": 0,
        "activityType": "all"
      }
    },
    {
      "kind": "youtube#subscription",
      "etag": "sdFNhxmKlaV4u6vdj-cQRTQv3e0",
      "id": "LyhA8l4H3JvYxXD4Tg1nxXVEPvJ2aD4PCcq9QMoS36Y",
      "snippet": {
        "publishedAt": "2021-06-30T07:58:17.503385Z",
        "title": "월급쟁이부자들TV",
        "description": "지난 몇년간의 집값 상승으로 마음이 불편하셨나요?\n\n뜬구름 잡는 경제방송을 들어도 수입이 늘지 않고 계신가요?\n\n내집마련과 노후준비가 필요하지만 어떻게 해야할지 어려우신가요?\n\n월급쟁이부자들TV는 대한민국 흙수저에서 시작해 자수성가한 부자들이 모여\n직장인들을 위한 재테크, 내집마련, 노후준비에 필요한 실천적 방법을 공유합니다.  \n\n월급쟁이부자가 되고 싶다면\n출퇴근길 매일 30분만 투자해\n월급쟁이부자들 TV를 시청하면서\n생생한 부자들의 노하우를 배워가세요~\n\n\n▶ 당신이 부자가 되는 곳, 월급쟁이부자들\n\n 월급쟁이부자들 직원 채용 안내(PD, 작가, 웹디자이너, 웹기획자, 인사총무 등)\n  → 자세한 사항은 아래 직원채용안내 링크를 참조해주세요.",
        "resourceId": {
          "kind": "youtube#channel",
          "channelId": "UCDSj40X9FFUAnx1nv7gQhcA"
        },
        "channelId": "UCu5nYbDUsH008WSUkEJYblA",
        "thumbnails": {
          "default": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRjtg2Fv67pJhRkojOU9DSGrG2LqlebhBUPVi_m=s88-c-k-c0x00ffffff-no-rj"
          },
          "medium": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRjtg2Fv67pJhRkojOU9DSGrG2LqlebhBUPVi_m=s240-c-k-c0x00ffffff-no-rj"
          },
          "high": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRjtg2Fv67pJhRkojOU9DSGrG2LqlebhBUPVi_m=s800-c-k-c0x00ffffff-no-rj"
          }
        }
      },
      "contentDetails": {
        "totalItemCount": 742,
        "newItemCount": 0,
        "activityType": "all"
      }
    },
    {
      "kind": "youtube#subscription",
      "etag": "Dvg08MvaI_PZVId8lxReeI06UNk",
      "id": "LyhA8l4H3JvN5U_arrQAG2KHV8QOAl2MVKkY7h7y-Z4",
      "snippet": {
        "publishedAt": "2022-05-14T23:11:29.617056Z",
        "title": "승우아빠",
        "description": "눈으로 보기만 할수 있는 채널이 아닌, \n그냥 스쳐 지나가는 어려운 레시피가 아닌,\n누구나 따라할 수 있는 레시피 채널을 만들고 싶어요!\n*https://instagram.com/swab_official\n*https://www.twitch.tv/swab85",
        "resourceId": {
          "kind": "youtube#channel",
          "channelId": "UCgsffS7MfKL6YU3r_U3E-aA"
        },
        "channelId": "UCu5nYbDUsH008WSUkEJYblA",
        "thumbnails": {
          "default": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLTLLQylFz-v0Ah6tNoBEa2L60HUTg-A4Ij3MtGABg=s88-c-k-c0x00ffffff-no-rj"
          },
          "medium": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLTLLQylFz-v0Ah6tNoBEa2L60HUTg-A4Ij3MtGABg=s240-c-k-c0x00ffffff-no-rj"
          },
          "high": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLTLLQylFz-v0Ah6tNoBEa2L60HUTg-A4Ij3MtGABg=s800-c-k-c0x00ffffff-no-rj"
          }
        }
      },
      "contentDetails": {
        "totalItemCount": 719,
        "newItemCount": 0,
        "activityType": "all"
      }
    },
    {
      "kind": "youtube#subscription",
      "etag": "6tII4Cx-gAxwWqH9tncKIzg3bIc",
      "id": "LyhA8l4H3JvYxXD4Tg1nxbTUCZsPFglX47Sg7HwnEs0",
      "snippet": {
        "publishedAt": "2020-10-27T02:50:59.294813Z",
        "title": "바로영어 with세진쌤",
        "description": "지금 바로 나에게 필요한 영어,\n나에게 날개를 달아줄 그 영어,\n세진쌤과 함께 하세요.\n\n토익 /  비즈니스 회화 / 영작 /  외국어 학습법\n\nbarotv101@gmail.com",
        "resourceId": {
          "kind": "youtube#channel",
          "channelId": "UCR6212PWPEpNg1t8u123jRg"
        },
        "channelId": "UCu5nYbDUsH008WSUkEJYblA",
        "thumbnails": {
          "default": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRbMfcrSsEPp8ajN6fAC4Tq6lXO9ZtwBudaJRulnw=s88-c-k-c0x00ffffff-no-rj"
          },
          "medium": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRbMfcrSsEPp8ajN6fAC4Tq6lXO9ZtwBudaJRulnw=s240-c-k-c0x00ffffff-no-rj"
          },
          "high": {
            "url": "https://yt3.ggpht.com/ytc/AKedOLRbMfcrSsEPp8ajN6fAC4Tq6lXO9ZtwBudaJRulnw=s800-c-k-c0x00ffffff-no-rj"
          }
        }
      },
      "contentDetails": {
        "totalItemCount": 167,
        "newItemCount": 0,
        "activityType": "all"
      }
    }
  ]
}
''';
