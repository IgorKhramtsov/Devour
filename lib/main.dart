import 'package:devour/injection.dart' as di;
import 'package:devour/presentation/widgets/platform/platform_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  await di.setupInjections();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const PlatformApp();
  }
}
