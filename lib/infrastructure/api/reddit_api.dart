import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/injection.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: 'https://oauth.reddit.com/api/v1')
class RedditAPI {
  static Interceptor getAuthenticationTokenInterceptor() =>
      AuthenticationTokenInterceptor();
}

class AuthenticationTokenInterceptor extends Interceptor {
  AuthenticationTokenInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final account =
        serviceLocator<AccountsRepository>().getAccount<RedditAccount>();
    if (account.isSome()) {
      options.headers['Authorization'] =
          'Bearer ${account.toNullable()!.accessToken}';
    }

    handler.next(options);
  }
}
