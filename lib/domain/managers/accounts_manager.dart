import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:collection/collection.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/infrastructure/api/reddit_auth_api.dart';
import 'package:devour/infrastructure/register_module.dart';
import 'package:devour/injection.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@singleton
class AccountsManager {
  AccountsRepository accountsRepository;
  AccountsManager(this.accountsRepository);

  /// Creates account manager, and listen to accounts repo, to update interceptors
  @factoryMethod
  static Future<AccountsManager> init(AccountsRepository accountsRepository) async {
    final manager = AccountsManager(accountsRepository);
    manager.initAccountsListener();

    return manager;
  }

  /// Listen to accounts in repo, and updates `Dio` interceptors accordingly
  void initAccountsListener() {
    accountsRepository.accounts.listen((accounts) {
      final redditAccount = accounts.whereType<RedditAccount>().firstOrNull;
      _updateDioOptions(Option.fromNullable(redditAccount));
    });
  }

  /// Updates interceptors of reddit dio, to add Authorization header, and catch expired
  /// token exception, to refresh it and retry.
  void _updateDioOptions(Option<OAuthAccountModel> accountOption) {
    if (accountOption.isNone()) {
      return;
    }
    final account = accountOption.toNullable()!;

    final dio = serviceLocator<Dio>(instanceName: kRedditDioName);
    dio.interceptors.clear();
    if (account is RedditAccount) {
      dio.interceptors.add(RedditAPI.getAuthenticationTokenInterceptor());
      dio.interceptors.add(RedditAuthAPI.getRefreshTokenInterceptor(dio));
    }
  }
}