import 'package:devour/injection.dart' as di;
import 'package:devour/presentation/screens/feed/feed_screen.dart';
import 'package:devour/presentation/screens/telegram_login/telegram_login_screen.dart';
import 'package:devour/presentation/widgets/platform/platform_app.dart';
import 'package:flutter/material.dart';

void main() {
  di.setupInjections();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const PlatformApp(
      title: 'Devour',
      primaryColor: Colors.blue,
      home: TelegramLoginScreen(),
    );
  }
}
