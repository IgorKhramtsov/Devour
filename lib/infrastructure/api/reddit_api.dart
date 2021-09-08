import 'package:devour/infrastructure/core/env.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reddit_api.g.dart';
part 'reddit_api.freezed.dart';

const String _kBaseUrl = 'https://www.reddit.com/api/v1/';
// add ignored to path, because flutter sometimes dont show first path element
const String _kRedirectUrl = 'devour://ignored/reddit/auth_redirect';

@Singleton()
@RestApi(baseUrl: _kBaseUrl)
abstract class RedditAPI {
  @factoryMethod
  factory RedditAPI(Dio dio) = _RedditAPI;

  @POST('/access_token')
  Future<AuthorizationResponse> _getAccessToken(
    @Query('grant_type') String grantType,
    @Query('code') String code,
    @Query('redirect_uri') String redirectUri,
    @Header('Authorization') String authorization,
  );

  static String get baseUrl => _kBaseUrl;
}

/// Authorization response data
@freezed
class AuthorizationResponse with _$AuthorizationResponse {
  // ignore: public_member_api_docs
  factory AuthorizationResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'scope') required String scope,
  }) = _AuthorizationResponse;

  factory AuthorizationResponse.fromJson(Map<String, Object?> json) =>
      _$AuthorizationResponseFromJson(json);
}

/// Extension for authorization
extension Authorize on RedditAPI {
  Future<AuthorizationResponse> getAccessToken(String code) => _getAccessToken(
        'authorization_code',
        code,
        _kRedirectUrl,
        getBasicCredentials(EnvVariables.clientId, ''),
      );

  /// Open authorization link in browser
  Future<String> getAuthorizationLink(String randomString) =>
      _createAuthorizationLink(
        EnvVariables.clientId,
        'code',
        randomString,
        _kRedirectUrl,
        'permanent',
        'read identity',
      );

  Future<String> _createAuthorizationLink(
    String clientId,
    String responseType,
    String state,
    String redirect,
    String duration,
    String scope,
  ) async {
    final query = <String, String>{};
    query['client_id'] = clientId;
    query['response_type'] = responseType;
    query['state'] = state;
    query['redirect_uri'] = redirect;
    query['duration'] = duration;
    query['scope'] = scope;

    final options = Options(method: 'GET', headers: <String, dynamic>{})
        .compose(BaseOptions(), 'authorize.compact', queryParameters: query)
        .copyWith(baseUrl: RedditAPI.baseUrl);
    final url = options.uri;

    return url.toString();
  }
}
