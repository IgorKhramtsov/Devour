// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedditResponse<T> _$$_RedditResponseFromJson<T>(Map<String, dynamic> json) =>
    _$_RedditResponse<T>(
      kind: json['kind'] as String,
      data: RRDataConverter<T>().fromJson(json['data'] as Object),
    );

Map<String, dynamic> _$$_RedditResponseToJson<T>(
        _$_RedditResponse<T> instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': RRDataConverter<T>().toJson(instance.data),
    };

_$_RedditListingResponse<T> _$$_RedditListingResponseFromJson<T>(
        Map<String, dynamic> json) =>
    _$_RedditListingResponse<T>(
      after: json['after'] as String,
      dist: json['dist'] as int,
      modhash: json['modhash'] as String?,
      geo_filter: json['geo_filter'],
      children: (json['children'] as List<dynamic>)
          .map((e) => RRDataConverter<T>().fromJson(e as Object))
          .toList(),
      before: json['before'] as String?,
    );

Map<String, dynamic> _$$_RedditListingResponseToJson<T>(
        _$_RedditListingResponse<T> instance) =>
    <String, dynamic>{
      'after': instance.after,
      'dist': instance.dist,
      'modhash': instance.modhash,
      'geo_filter': instance.geo_filter,
      'children': instance.children.map(RRDataConverter<T>().toJson).toList(),
      'before': instance.before,
    };

_$_RedditPostResponse _$$_RedditPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RedditPostResponse(
      subreddit: json['subreddit'] as String,
      author: json['author'] as String,
      title: json['title'] as String,
      upvoteRatio: (json['upvote_ratio'] as num).toDouble(),
      ups: json['ups'] as int,
      numComments: json['num_comments'] as int,
      stickied: json['stickied'] as bool,
      createdUtc: (json['created_utc'] as num).toDouble(),
      isVideo: json['is_video'] as bool,
      url: json['url'] as String,
      permalink: json['permalink'] as String,
      over18: json['over_18'] as bool,
    );

Map<String, dynamic> _$$_RedditPostResponseToJson(
        _$_RedditPostResponse instance) =>
    <String, dynamic>{
      'subreddit': instance.subreddit,
      'author': instance.author,
      'title': instance.title,
      'upvote_ratio': instance.upvoteRatio,
      'ups': instance.ups,
      'num_comments': instance.numComments,
      'stickied': instance.stickied,
      'created_utc': instance.createdUtc,
      'is_video': instance.isVideo,
      'url': instance.url,
      'permalink': instance.permalink,
      'over_18': instance.over18,
    };
