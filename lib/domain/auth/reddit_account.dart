import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:devour/infrastructure/api/reddit/response/reddit_auth_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'reddit_account.freezed.dart';
part 'reddit_account.g.dart';

// TODO: currently, there is bad inheritance because of freezed. Try to do something.
// TODO: here is Hive annotation, which resulting in mixing of domain and infrastructure. Fix.
@freezed
class RedditAccount extends OAuthAccountModel with _$RedditAccount {
  /// Creates a reddit account model
  @HiveType(typeId: 0)
  const factory RedditAccount({
    @HiveField(0) required String accessToken,
    @HiveField(1) required int expiresIn,
    @HiveField(2) required String refreshToken,
    @HiveField(3) required String scope,
  }) = _RedditAccount;

  factory RedditAccount.fromResponse(AuthorizationResponse response) =>
      RedditAccount(
        accessToken: response.accessToken,
        expiresIn: response.expiresIn,
        refreshToken: response.refreshToken,
        scope: response.scope,
      );

  const RedditAccount._();

  @override
  String get accessToken => accessToken;
  @override
  int get expiresIn => expiresIn;
  @override
  String get refreshToken => refreshToken;
  @override
  String get scope => scope;
}
