import 'package:devour/presentation/screens/Login/login.screen.dart';
import 'package:devour/presentation/widgets/platform/platform_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Devour',
      primaryColor: Colors.blue,
      home: LoginScreen(),
    );
  }
}
