part of 'accounts_bloc.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState({
    required Option<RedditAccount> redditAccount,
  }) = _AccountState;

  factory AccountsState.initial() => AccountsState(
        redditAccount: Option.none(),
      );
}
