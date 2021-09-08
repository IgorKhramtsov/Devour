import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:devour/infrastructure/repositories/accounts_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc(this._redditAPI, this._accountsRepository)
      : super(AccountsState.initial()) {
    this.add(AccountsEvent.Fetching());
  }

  static String? _authRandomString;

  final RedditAPI _redditAPI;
  final AccountsRepository _accountsRepository;

  @override
  Stream<AccountsState> mapEventToState(
    AccountsEvent event,
  ) async* {
    yield* event.map(
      Fetching: (_Fetching value) async* {
        yield state.copyWith(
          redditAccount: _accountsRepository.getAccount<RedditAccount>(),
        );
      },
      AuthorizeReddit: (e) async* {
        if (e.args.state == _authRandomString) {
          final account = RedditAccount(token: e.args.token);
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
            await _redditAPI.getAuthorizationLink(_authRandomString!);

        AppNavigator.openLink(authorizationLink);
        // yield state;
      },
      RequestAuthorizationVK: (e) async* {
        yield state;
      },
    );
  }
}
