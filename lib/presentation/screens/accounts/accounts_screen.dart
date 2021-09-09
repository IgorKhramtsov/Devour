import 'package:devour/application/accounts/bloc/accounts_bloc.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/infrastructure/api/reddit_auth_api.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/widgets/platform/platform_button.dart';
import 'package:devour/presentation/widgets/platform/platform_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Accounts screen
class AccountScreen extends StatelessWidget {
  /// Accounts screen
  AccountScreen({Key? key, RedditRedirectArguments? redirectArguments})
      : super(key: key) {
    if (redirectArguments != null) {
      _accountsBloc.add(AccountsEvent.AuthorizeReddit(redirectArguments));
    }
  }

  final AccountsBloc _accountsBloc = serviceLocator<AccountsBloc>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        body: Center(
      child: BlocBuilder<AccountsBloc, AccountsState>(
        bloc: _accountsBloc,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlatformButton(
                  onPressed: () => _accountsBloc
                      .add(const AccountsEvent.RequestAuthorizationReddit()),
                  child: Text(_accountsBloc.state.redditAccount
                      .foldLeft('reddit', (acc, t) => 'reddit(${t.scope})'))),
              const SizedBox(height: 20),
              PlatformButton(
                  onPressed: () =>
                      _accountsBloc.add(const AccountsEvent.AuthorizeVK()),
                  child: Text('vk')),
            ],
          );
        },
      ),
    ));
  }
}
