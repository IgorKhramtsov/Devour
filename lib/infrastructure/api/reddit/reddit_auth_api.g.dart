// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_auth_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RedditAuthAPI implements RedditAuthAPI {
  _RedditAuthAPI(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.reddit.com/api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthorizationResponse> _getAccessToken(
      {required grantType,
      refreshToken,
      code,
      redirectUri,
      authorization}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'grant_type': grantType,
      r'refresh_token': refreshToken,
      r'code': code,
      r'redirect_uri': redirectUri
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AuthorizationResponse>(Options(
                method: 'POST',
                headers: <String, dynamic>{r'Authorization': authorization},
                extra: _extra)
            .compose(_dio.options, '/access_token',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthorizationResponse.fromJson(_result.data!);
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
