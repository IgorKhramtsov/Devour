import 'dart:async';

import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/infrastructure/api/reddit/reddit_auth_api.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

        yield state.copyWith(
          redditAccount: account,
        );
      },
      AuthorizeReddit: (e) async* {
        if (e.args.state == _authRandomString) {
          final response = await _redditAuthAPI.getAccessToken(e.args.code);
          final account = RedditAccount.fromResponse(response);
          _accountsRepository.setAccount(account);

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
}
