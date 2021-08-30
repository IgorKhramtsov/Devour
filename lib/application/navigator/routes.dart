import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes.freezed.dart';

class Routes {
  Routes._();

  static const String home = 'home';
  static const String reddit_auth = 'reddit/auth';
  static const String reddit_auth_redirect = 'reddit/auth_redirect';
}

/// Arguments with user token and state after deeplinking back to app from reddit
@freezed
class RedditRedirectArguments with _$RedditRedirectArguments {
  /// Converts uri like ```redirect/reddit_auth?state=123123&token=wfe12f23``` to RedditRedirectArguments
  factory RedditRedirectArguments.fromUri(String uri) {
    final httpArgs = uri.contains('?') ? uri.split('?').skip(1).first : uri;
    final httpArgsMap = <String, String>{
      for (final pair in httpArgs.split('&'))
        pair.split('=').first: pair.split('=').skip(1).first
    };
    final state = httpArgsMap['state'];
    final code = httpArgsMap['code'];
    assert(state != null);
    assert(code != null);

    return RedditRedirectArguments(state: state!, token: code!);
  }
  factory RedditRedirectArguments({
    required String token,
    required String state,
  }) = _RedditRedirectArguments;
}
