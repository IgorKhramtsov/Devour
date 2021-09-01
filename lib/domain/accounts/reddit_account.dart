import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_account.freezed.dart';

@freezed
class RedditAccount with _$RedditAccount {
  const factory RedditAccount({required String token}) = _RedditAccount;
}
