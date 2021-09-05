import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_account.freezed.dart';

@freezed
class RedditAccount extends OAuthAccountModel with _$RedditAccount {
  const RedditAccount._();

  const factory RedditAccount({required String token}) = _RedditAccount;

  @override
  String get token => token;
}
