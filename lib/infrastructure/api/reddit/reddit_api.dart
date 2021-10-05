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

  // /r/subbreddit/random
  // /r/subbreddit/sort (top, controversial)

  /// Grabs posts from /r/[subreddit] (memes) by default. [after] and [before] are
  /// used for navigation, [limit] for number of posts.
  @GET('/r/{subreddit}')
  Future<RedditResponse> _getMemes({
    @Query('after') String? after,
    @Query('before') String? before,
    @Query('count') int? count,
    @Query('limit') int? limit,
    @Path('subreddit') String subreddit = 'memes',
  });

  static Interceptor getAuthenticationTokenInterceptor() =>
      AuthenticationTokenInterceptor();
}

/// Wrapper for calling Retrofit generated methods.
extension RedditAPIWrapper on RedditAPI {
  /// [after] is newer, [before] is older posts.
  Future<RedditListingResponse> getMemes({
    String? after,
    String? before,
    int? count,
    int? limit,
    String subreddit = 'memes',
  }) =>
      _getMemes(
        after: after,
        before: before,
        count: count,
        limit: limit,
        subreddit: subreddit,
      ).then((it) => it.data as RedditListingResponse);
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
