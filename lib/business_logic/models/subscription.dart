import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable(explicitToJson: true)
class Subscription {
  final String kind;
  final String etag;
  final String id;
  final Snippet snippet;
  final ContentDetails contentDetails;

  Subscription({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    required this.contentDetails,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Snippet {
  final DateTime publishedAt;
  String? channelTitle;
  final String title;
  final String description;
  final ResourceId resourceId;
  final String channelId;
  final Thumbnails thumbnails;

  Snippet({
    required this.publishedAt,
    this.channelTitle,
    required this.title,
    required this.description,
    required this.resourceId,
    required this.channelId,
    required this.thumbnails,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SnippetToJson(this);
}

@JsonSerializable()
class ResourceId {
  final String kind;
  final String channelId;

  ResourceId({required this.kind, required this.channelId});

  factory ResourceId.fromJson(Map<String, dynamic> json) =>
      _$ResourceIdFromJson(json);

  Map<String, dynamic> toJson() => _$ResourceIdToJson(this);
}

@JsonSerializable()
class Thumbnails {
  @JsonKey(name: 'default')
  final Default defaultKey;
  @JsonKey(name: 'medium')
  final Medium mediumKey;
  @JsonKey(name: 'high')
  final High highKey;

  Thumbnails({
    required this.defaultKey,
    required this.mediumKey,
    required this.highKey,
  });

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Default {
  final String url;
  int? width;
  int? height;

  Default({
    required this.url,
    this.width,
    this.height,
  });

  factory Default.fromJson(Map<String, dynamic> json) =>
      _$DefaultFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Medium {
  final String url;
  int? width;
  int? height;

  Medium({
    required this.url,
    this.width,
    this.height,
  });

  factory Medium.fromJson(Map<String, dynamic> json) => _$MediumFromJson(json);

  Map<String, dynamic> toJson() => _$MediumToJson(this);
}

@JsonSerializable(includeIfNull: false)
class High {
  final String url;
  int? width;
  int? height;

  High({
    required this.url,
    this.width,
    this.height,
  });

  factory High.fromJson(Map<String, dynamic> json) => _$HighFromJson(json);

  Map<String, dynamic> toJson() => _$HighToJson(this);
}

@JsonSerializable()
class ContentDetails {
  final int totalItemCount;
  final int newItemCount;
  final String activityType;

  ContentDetails({
    required this.totalItemCount,
    required this.newItemCount,
    required this.activityType,
  });

  factory ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailsToJson(this);
}

@JsonSerializable()
class SubscriberSnippet {
  final String title;
  final String description;
  final String channelId;
  final Thumbnails thumbnails;

  SubscriberSnippet({
    required this.title,
    required this.description,
    required this.channelId,
    required this.thumbnails,
  });

  factory SubscriberSnippet.fromJson(Map<String, dynamic> json) =>
      _$SubscriberSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriberSnippetToJson(this);
}
