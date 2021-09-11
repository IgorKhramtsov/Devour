// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RedditAPI implements RedditAPI {
  _RedditAPI(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://oauth.reddit.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RedditResponse<dynamic>> _getMemes(
      {after, before, count, limit, subreddit = 'memes'}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'after': after,
      r'before': before,
      r'count': count,
      r'limit': limit
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RedditResponse<dynamic>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/r/$subreddit',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RedditResponse<dynamic>.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
