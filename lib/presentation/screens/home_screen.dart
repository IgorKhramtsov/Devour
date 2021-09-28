import 'package:devour/application/navigator/routes.dart';
import 'package:devour/presentation/screens/accounts/accounts_screen.dart';
import 'package:devour/presentation/screens/feed/feed_screen.dart';
import 'package:devour/presentation/widgets/platform/platform_tab_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

enum HomePages { feed, accounts }

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    this.selectedPage = HomePages.feed,
    this.args,
    Key? key,
  }) : super(key: key);

  /// Default selected page
  final HomePages selectedPage;

  /// Optional arguments (like accounts adding redirect args)
  final RouteArguments? args;

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      currentIndex: selectedPage.index,
      tabsIcons: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house),
          activeIcon: Icon(CupertinoIcons.house_fill),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          activeIcon: Icon(CupertinoIcons.person_fill),
        ),
      ],
      tabBuilder: (BuildContext context, int index) {
        if (index == HomePages.feed.index) {
          return const FeedScreen();
        } else if (index == HomePages.accounts.index) {
          return AccountScreen(
            redirectArguments: args as RedditRedirectArguments?,
          );
        } else {
          throw Exception('Invalid index: $index');
        }
      },
    );
  }
}
