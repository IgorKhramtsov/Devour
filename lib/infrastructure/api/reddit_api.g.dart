// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorizationResponse _$_$_AuthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return _$_AuthorizationResponse(
    accessToken: json['access_token'] as String,
    tokenType: json['token_type'] as String,
    expiresIn: json['expires_in'] as int,
    refreshToken: json['refresh_token'] as String,
    scope: json['scope'] as String,
  );
}

Map<String, dynamic> _$_$_AuthorizationResponseToJson(
        _$_AuthorizationResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RedditAPI implements RedditAPI {
  _RedditAPI(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.reddit.com/api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthorizationResponse> _getAccessToken(
      grantType, code, redirectUri, authorization) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'grant_type': grantType,
      r'code': code,
      r'redirect_uri': redirectUri
    };
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
