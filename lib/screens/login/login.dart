import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/theme/theme.dart';
import 'package:mobile/widgets/my_button.dart';
import 'controller/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends BaseScreen<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget body() {
    return _Body(controller: controller);
  }
}

class _Body extends StatelessWidget {
  final LoginController controller;
  const _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Chat app'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    ?.copyWith(color: ThemeConfig.lightTheme.primaryColor),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            width: double.infinity,
            child: MyButton(
              title: "Sign in with Facebook",
              onTap: controller.onFacebookButtonPress,
              color: Colors.blue,
              textColor: Colors.white,
              icon: FontAwesomeIcons.facebookF,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            width: double.infinity,
            child: MyButton(
              title: "Sign in with Google",
              onTap: controller.onGoogleButtonPress,
              color: Colors.red,
              textColor: Colors.white,
              icon: FontAwesomeIcons.google,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
