import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/infrastructure/api/reddit_auth_api.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:devour/infrastructure/register_module.dart';
import 'package:devour/injection.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc(this._redditAuthAPI, this._accountsRepository)
      : super(AccountsState.initial()) {
    this.add(AccountsEvent.Fetching());
  }

  static String? _authRandomString;

  final RedditAuthAPI _redditAuthAPI;
  final AccountsRepository _accountsRepository;

  @override
  Stream<AccountsState> mapEventToState(
    AccountsEvent event,
  ) async* {
    yield* event.map(
      Fetching: (_Fetching value) async* {
        final account = _accountsRepository.getAccount<RedditAccount>();
        _updateDioOptions(account);

        yield state.copyWith(
          redditAccount: account,
        );
      },
      AuthorizeReddit: (e) async* {
        if (e.args.state == _authRandomString) {
          final response = await _redditAuthAPI.getAccessToken(e.args.code);
          final account = RedditAccount.fromResponse(response);
          _accountsRepository.setAccount(account);
          _updateDioOptions(Option.of(account));

          yield state.copyWith(
            redditAccount: Option.of(account),
          );
        }
      },
      AuthorizeVK: (e) async* {},
      RequestAuthorizationReddit: (e) async* {
        _authRandomString = getRandomString(15);
        final authorizationLink =
            await _redditAuthAPI.getAuthorizationLink(_authRandomString!);

        AppNavigator.openAuthLink(authorizationLink);
      },
      RequestAuthorizationVK: (e) async* {
        yield state;
      },
    );
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
