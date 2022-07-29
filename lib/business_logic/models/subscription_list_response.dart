import 'package:json_annotation/json_annotation.dart';
import 'package:tubebox_prototype/business_logic/models/subscription.dart';

part 'subscription_list_response.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubscriptionListResponse {
  final String kind;
  final String etag;
  String? nextPageToken;
  String? prevPageToken;
  final PageInfo pageInfo;
  final List<Subscription> items;

  SubscriptionListResponse({
    required this.kind,
    required this.etag,
    this.nextPageToken,
    this.prevPageToken,
    required this.pageInfo,
    required this.items,
  });

  factory SubscriptionListResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionListResponseToJson(this);
}

@JsonSerializable()
class PageInfo {
  final int totalResults;
  final int resultsPerPage;

  PageInfo({
    required this.totalResults,
    required this.resultsPerPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}
