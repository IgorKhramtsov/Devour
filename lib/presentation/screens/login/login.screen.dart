import 'package:devour/presentation/screens/Login/phone_input.widget.dart';
import 'package:devour/presentation/widgets/platform/platform_button.dart';
import 'package:devour/presentation/widgets/platform/platform_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: PlatformScaffold(
        body: AnimatedSize(
          duration: Duration(milliseconds: 200),
          vsync: this,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your phone number',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontSize: 28),
              ),
              const SizedBox(height: 40),
              PhoneInputField(),
              const SizedBox(height: 20),
              PlatformButton(onPressed: () => null, child: Text('Press me'))
            ],
          )),
        ),
      ),
    );
  }
}
