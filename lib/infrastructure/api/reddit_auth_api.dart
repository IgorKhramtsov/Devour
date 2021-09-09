import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/infrastructure/core/env.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:devour/infrastructure/register_module.dart';
import 'package:devour/injection.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reddit_auth_api.g.dart';
part 'reddit_auth_api.freezed.dart';

const String _kBaseUrl = 'https://www.reddit.com/api/v1/';
// add ignored to path, because flutter sometimes dont show first path element
const String _kRedirectUrl = 'devour://ignored/reddit/auth_redirect';
const int _kRefreshTokenNeeded = 0;

@Singleton()
@RestApi(baseUrl: _kBaseUrl)
abstract class RedditAuthAPI {
  @factoryMethod
  factory RedditAuthAPI(@Named(kRedditDioName) Dio dio) = _RedditAuthAPI;

  @POST('/access_token')
  Future<AuthorizationResponse> _getAccessToken({
    @Query('grant_type') String grantType,
    @Query('refresh_token') String? refreshToken,
    @Query('code') String? code,
    @Query('redirect_uri') String? redirectUri,
    @Header('Authorization') String? authorization,
  });

  static Interceptor getRefreshTokenInterceptor(Dio dio) =>
      RefreshTokenInterceptor(dio);

  static String get baseUrl => _kBaseUrl;
}

class RefreshTokenInterceptor extends Interceptor {
  RefreshTokenInterceptor(this.dio);

  Dio dio;

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == _kRefreshTokenNeeded) {
      final requestOptions = err.response!.requestOptions;
      final options = Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      );

      final account = serviceLocator<AccountsRepository>()
          .getAccount<RedditAccount>()
          .toNullable()!;
      final newAccount = RedditAccount.fromResponse(
          await serviceLocator<RedditAuthAPI>().refreshToken(account));
      serviceLocator<AccountsRepository>().setAccount(newAccount);
      options.headers!['Authorization'] = 'Bearer ${newAccount.accessToken}';

      final cloneRequest = await dio.request(requestOptions.path,
          options: options, queryParameters: requestOptions.queryParameters);
      handler.resolve(cloneRequest);
    } else {
      handler.next(err);
    }
  }
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
extension Authorize on RedditAuthAPI {
  Future<AuthorizationResponse> refreshToken(RedditAccount account) =>
      _getAccessToken(
        grantType: 'refresh_token',
        refreshToken: account.refreshToken,
      );

  Future<AuthorizationResponse> getAccessToken(String code) => _getAccessToken(
        grantType: 'authorization_code',
        code: code,
        redirectUri: _kRedirectUrl,
        authorization: getBasicCredentials(EnvVariables.clientId, ''),
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
        .copyWith(baseUrl: RedditAuthAPI.baseUrl);
    final url = options.uri;

    return url.toString();
  }
}
