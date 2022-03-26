import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/login/model/login.dart';
import 'package:mobile/screens/login/service/login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginController extends BaseController<LoginModel, LoginService> {
  LoginController() : super(LoginModel(), LoginService());

  Future<GoogleSignInAccount?> onGoogleButtonPress() => GoogleSignIn().signIn();

  Future<LoginResult> onFacebookButtonPress() => FacebookAuth.instance.login();
  // void onFacebookButtonPress() {
  //   moveOffAllToIntroduction();
  // }
}
