import 'package:devour/application/navigator/routes.dart';
import 'package:devour/infrastructure/api/reddit_api.dart';
import 'package:devour/presentation/widgets/platform/platform_button.dart';
import 'package:devour/presentation/widgets/platform/platform_scaffold.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatelessWidget {
  final RedditRedirectArguments? redirectArguments;
  const AccountScreen({Key? key, this.redirectArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlatformButton(
              onPressed: () => RedditAPI(Dio()).authorize(),
              child: Text('reddit')),
          SizedBox(height: 20),
          PlatformButton(onPressed: () => null, child: Text('vk')),
        ],
      ),
    ));
  }
}
