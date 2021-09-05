import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@singleton
class RedditAccountRepository extends AccountRepository<RedditAccount> {
  Option<RedditAccount> _redditAccountOption = Option.none();

  @override
  void setAccount(RedditAccount account) {
    _redditAccountOption = Option.of(account);
    // TODO: check account validity?
    // TODO: save account to database
  }

  @override
  Option<RedditAccount> getAccount() {
    return _redditAccountOption;
  }

  @override
  bool isAuthenticated() => _redditAccountOption.isSome();

  @override
  void removeAccount() {
    _redditAccountOption = Option.none();
    // TODO: remove account from database
  }
}
