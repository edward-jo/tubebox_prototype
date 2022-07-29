// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: json['id'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      contentDetails: ContentDetails.fromJson(
          json['contentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet.toJson(),
      'contentDetails': instance.contentDetails.toJson(),
    };

Snippet _$SnippetFromJson(Map<String, dynamic> json) => Snippet(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelTitle: json['channelTitle'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      resourceId:
          ResourceId.fromJson(json['resourceId'] as Map<String, dynamic>),
      channelId: json['channelId'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SnippetToJson(Snippet instance) {
  final val = <String, dynamic>{
    'publishedAt': instance.publishedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('channelTitle', instance.channelTitle);
  val['title'] = instance.title;
  val['description'] = instance.description;
  val['resourceId'] = instance.resourceId;
  val['channelId'] = instance.channelId;
  val['thumbnails'] = instance.thumbnails;
  return val;
}

ResourceId _$ResourceIdFromJson(Map<String, dynamic> json) => ResourceId(
      kind: json['kind'] as String,
      channelId: json['channelId'] as String,
    );

Map<String, dynamic> _$ResourceIdToJson(ResourceId instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'channelId': instance.channelId,
    };

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      defaultKey: Default.fromJson(json['default'] as Map<String, dynamic>),
      mediumKey: Medium.fromJson(json['medium'] as Map<String, dynamic>),
      highKey: High.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'default': instance.defaultKey,
      'medium': instance.mediumKey,
      'high': instance.highKey,
    };

Default _$DefaultFromJson(Map<String, dynamic> json) => Default(
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$DefaultToJson(Default instance) {
  final val = <String, dynamic>{
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

Medium _$MediumFromJson(Map<String, dynamic> json) => Medium(
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$MediumToJson(Medium instance) {
  final val = <String, dynamic>{
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

High _$HighFromJson(Map<String, dynamic> json) => High(
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$HighToJson(High instance) {
  final val = <String, dynamic>{
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

ContentDetails _$ContentDetailsFromJson(Map<String, dynamic> json) =>
    ContentDetails(
      totalItemCount: json['totalItemCount'] as int,
      newItemCount: json['newItemCount'] as int,
      activityType: json['activityType'] as String,
    );

Map<String, dynamic> _$ContentDetailsToJson(ContentDetails instance) =>
    <String, dynamic>{
      'totalItemCount': instance.totalItemCount,
      'newItemCount': instance.newItemCount,
      'activityType': instance.activityType,
    };

SubscriberSnippet _$SubscriberSnippetFromJson(Map<String, dynamic> json) =>
    SubscriberSnippet(
      title: json['title'] as String,
      description: json['description'] as String,
      channelId: json['channelId'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriberSnippetToJson(SubscriberSnippet instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'channelId': instance.channelId,
      'thumbnails': instance.thumbnails,
    };
