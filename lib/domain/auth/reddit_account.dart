import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'reddit_account.freezed.dart';
part 'reddit_account.g.dart';

@freezed
class RedditAccount extends OAuthAccountModel with _$RedditAccount {
  /// Creates a reddit account model
  @HiveType(typeId: 0)
  const factory RedditAccount({
    @HiveField(0) required String token,
  }) = _RedditAccount;

  const RedditAccount._();

  @override
  String get token => token;
}
