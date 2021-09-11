import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/infrastructure/api/reddit/reddit_auth_api.dart';
import 'package:devour/infrastructure/api/reddit/response/reddit_responses.dart';
import 'package:devour/infrastructure/register_module.dart';
import 'package:devour/injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reddit_api.g.dart';

@singleton
@RestApi(baseUrl: 'https://oauth.reddit.com')
abstract class RedditAPI {
  @factoryMethod
  factory RedditAPI(@Named(kRedditDioName) Dio dio) = _RedditAPI;

  @GET('/r/memes')
  Future<RedditResponse> getMemes();

  static Interceptor getAuthenticationTokenInterceptor() =>
      AuthenticationTokenInterceptor();
}

class AuthenticationTokenInterceptor extends Interceptor {
  AuthenticationTokenInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path != kAccessTokenPath) {
      final account =
          serviceLocator<AccountsRepository>().getAccount<RedditAccount>();
      if (account.isSome()) {
        options.headers['Authorization'] =
            'bearer ${account.toNullable()!.accessToken}';
      }
    }

    handler.next(options);
  }
}
