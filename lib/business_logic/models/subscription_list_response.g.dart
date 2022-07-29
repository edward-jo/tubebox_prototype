// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionListResponse _$SubscriptionListResponseFromJson(
        Map<String, dynamic> json) =>
    SubscriptionListResponse(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      nextPageToken: json['nextPageToken'] as String?,
      prevPageToken: json['prevPageToken'] as String?,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionListResponseToJson(
    SubscriptionListResponse instance) {
  final val = <String, dynamic>{
    'kind': instance.kind,
    'etag': instance.etag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nextPageToken', instance.nextPageToken);
  writeNotNull('prevPageToken', instance.prevPageToken);
  val['pageInfo'] = instance.pageInfo.toJson();
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  return val;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
      totalResults: json['totalResults'] as int,
      resultsPerPage: json['resultsPerPage'] as int,
    );

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'totalResults': instance.totalResults,
      'resultsPerPage': instance.resultsPerPage,
    };
