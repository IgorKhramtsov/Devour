import 'package:devour/application/accounts/bloc/accounts_bloc.dart';
import 'package:devour/application/navigator/routes.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/widgets/platform/platform_button.dart';
import 'package:devour/presentation/widgets/platform/platform_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

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
                const SizedBox(
                  height: 350,
                  child: RiveAnimation.asset(
                    'lib/assets/animations/space_coffee.riv',
                  ),
                ),
                buildAccountButton(
                  context,
                  onPressed: () => _accountsBloc
                      .add(const AccountsEvent.RequestAuthorizationReddit()),
                  onDeletePressed: () =>
                      _accountsBloc.add(const AccountsEvent.ForgetReddit()),
                  text: _accountsBloc.state.redditAccount
                      .foldLeft('reddit', (acc, t) => 'reddit(${t.scope})'),
                  isEmpty: _accountsBloc.state.redditAccount.isNone(),
                ),
                const SizedBox(height: 20),
                buildAccountButton(
                  context,
                  onPressed: null,
                  onDeletePressed: null,
                  // onPressed: () =>
                  //     _accountsBloc.add(const AccountsEvent.AuthorizeVK()),
                  // onDeletePressed: () =>
                  //     _accountsBloc.add(const AccountsEvent.ForgetVK()),
                  text: 'VK (TBD)',
                  isEmpty: true,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildAccountButton(
    BuildContext context, {
    required VoidCallback? onPressed,
    required VoidCallback? onDeletePressed,
    required String text,
    required bool isEmpty,
  }) {
    TextStyle textStyle = CupertinoTheme.of(context).textTheme.textStyle;
    textStyle = textStyle.copyWith(color: textStyle.color!.withOpacity(.8));
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 220,
          child: PlatformButton(
            onPressed: isEmpty ? onPressed : null,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.person,
                  color: textStyle.color,
                ),
                const SizedBox(width: 12),
                Text(
                  text,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 48,
          child: PlatformButton(
            onPressed: isEmpty ? null : onDeletePressed,
            filled: false,
            child: const Icon(
              CupertinoIcons.xmark_circle,
              size: 34,
            ),
          ),
        )
      ],
    );
  }
}
