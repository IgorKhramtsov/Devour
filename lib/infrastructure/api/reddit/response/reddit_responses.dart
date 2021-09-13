import 'package:devour/infrastructure/core/misc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_responses.g.dart';
part 'reddit_responses.freezed.dart';

@freezed
class RedditResponse<T> with _$RedditResponse<T> {
  const factory RedditResponse({
    required String kind,
    @RRDataConverter() required T data,
  }) = _RedditResponse<T>;

  factory RedditResponse.fromJson(Map<String, Object?> json) =>
      _$RedditResponseFromJson<T>(json);
}

@freezed
class RedditListingResponse<T> with _$RedditListingResponse<T> {
  factory RedditListingResponse({
    @JsonKey(name: 'after') required String after, // "t3_plk79v"
    @JsonKey(name: 'dist') required int dist, // 27
    @JsonKey(name: 'modhash') String? modhash, // null
    @JsonKey(name: 'geo_filter') Object? geo_filter, // null
    @JsonKey(name: 'children')
    @RRDataConverter()
        required List<T> children, // List (27 items)
    @JsonKey(name: 'before') String? before, // null
  }) = _RedditListingResponse<T>;

  factory RedditListingResponse.fromJson(Map<String, Object?> json) =>
      _$RedditListingResponseFromJson<T>(json);
}

@freezed
class RedditPostResponse with _$RedditPostResponse {
  factory RedditPostResponse({
    @JsonKey(name: 'subreddit') required String subreddit,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'upvote_ratio') required double upvoteRatio,
    @JsonKey(name: 'ups') required int ups,
    @JsonKey(name: 'num_comments') required int numComments,
    @JsonKey(name: 'stickied') required bool stickied, // is 'pinned'
    @JsonKey(name: 'created_utc') required double createdUtc,
    @JsonKey(name: 'is_video') required bool isVideo,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'permalink') required String permalink,
    @JsonKey(name: 'over_18') required bool over18,
  }) = _RedditPostResponse;

  factory RedditPostResponse.fromJson(Map<String, Object?> json) =>
      _$RedditPostResponseFromJson(json);
}

class RRDataConverter<T> implements JsonConverter<T, Object> {
  const RRDataConverter();

  @override
  T fromJson(Object json) {
    final data = json as Map<String, dynamic>;

    if (data.containsKey('after')) {
      // The 'after' key is Listing feature
      return RedditListingResponse.fromJson(data) as T;
    } else if (data['kind'] == 't3') {
      // By reddit API documentation, 't3' is a Link, and requrests to subbreddit
      // listing contains 't3' objects. Maybe its can be something elese, not only
      // reddit post.
      return RedditPostResponse.fromJson(data['data'] as Map<String, dynamic>)
          as T;
    } else {
      throw UnimplementedError('Cant convert this json');
    }
  }

  @override
  Object toJson(T object) {
    throw UnimplementedError('Dont supose to convert into json');
  }
}
