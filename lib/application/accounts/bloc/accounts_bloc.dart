import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/domain/accounts/reddit_account.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  static String? _authRandomString;
  RedditAPI _redditAPI;
  AccountsBloc(this._redditAPI) : super(AccountsState.initial());

  @override
  Stream<AccountsState> mapEventToState(
    AccountsEvent event,
  ) async* {
    yield* event.map(
      AuthorizeReddit: (e) async* {
        if (e.args.state == _authRandomString) {
          // TODO: Save to DB
          yield state.copyWith(
            redditAccount: Option.of(RedditAccount(token: e.args.token)),
          );
        }
      },
      AuthorizeVK: (e) async* {},
      RequestAuthorizationReddit: (e) async* {
        _authRandomString = getRandomString(15);
        await _redditAPI.authorize(_authRandomString!);
        yield state;
      },
      RequestAuthorizationVK: (e) async* {
        yield state;
      },
    );
  }
}
