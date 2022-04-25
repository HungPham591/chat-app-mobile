import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/login/model/login.dart';
import 'package:mobile/screens/login/service/login.dart';

class LoginController extends BaseController<LoginModel, LoginService> {
  LoginController() : super(LoginModel(), LoginService());

  void onGoogleButtonPress() async {
    try {
      // final result = await GoogleSignIn().signIn();
      moveOffAllToIntroduction();
    } on PlatformException catch (err) {
      print(err);
    }
  }

  // onGoogleButtonPress() {
  //   moveOffAllToIntroduction();
  // }

  void onFacebookButtonPress() async {
    try {
      // final result = await FacebookAuth.instance.login();
      moveOffAllToIntroduction();
    } catch (err) {
      print(err);
    }
  }
  // void onFacebookButtonPress() {
  //   moveOffAllToIntroduction();
  // }
}
