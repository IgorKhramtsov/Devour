import 'package:devour/application/navigator/routes.dart';
import 'package:devour/presentation/screens/accounts/accounts_screen.dart';
import 'package:devour/presentation/screens/feed/feed_screen.dart';
import 'package:devour/presentation/widgets/platform/platform_tab_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

enum HomePage { feed, accounts }

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    this.selectedPage = HomePage.feed,
    this.args,
    Key? key,
  }) : super(key: key);

  /// Default selected page
  final HomePage selectedPage;

  /// Optional arguments (like accounts adding redirect args)
  final RouteArguments? args;

  @override
  Widget build(BuildContext context) {
    final tabs = <HomePage, Widget>{
      HomePage.accounts: AccountScreen(
        redirectArguments: args as RedditRedirectArguments?,
      ),
      HomePage.feed: const FeedScreen()
    };
    return PlatformTabScaffold(
      key: Key(selectedPage.index.toString()),
      currentIndex: selectedPage.index,
      tabsIcons: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house),
          activeIcon: Icon(CupertinoIcons.house_fill),
          label: 'feed',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          activeIcon: Icon(CupertinoIcons.person_fill),
          label: 'accounts',
        ),
      ],
      tabBuilder: (BuildContext context, int index) =>
          tabs[HomePage.values[index]]!,
    );
  }
}
