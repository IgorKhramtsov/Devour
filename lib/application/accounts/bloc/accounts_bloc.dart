import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:devour/infrastructure/repositories/reddit_account_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  static String? _authRandomString;
  final RedditAPI _redditAPI;
  final RedditAccountRepository _redditAccountRepository;
  AccountsBloc(this._redditAPI, this._redditAccountRepository)
      : super(AccountsState.initial());

  @override
  Stream<AccountsState> mapEventToState(
    AccountsEvent event,
  ) async* {
    yield* event.map(
      AuthorizeReddit: (e) async* {
        if (e.args.state == _authRandomString) {
          _redditAccountRepository
              .setAccount(RedditAccount(token: e.args.token));
          yield state.copyWith(
            redditAccount: _redditAccountRepository.getAccount(),
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
