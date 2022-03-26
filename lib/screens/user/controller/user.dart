import 'package:mobile/screens/base/controller/base_controller.dart';

import 'package:mobile/screens/user/model/user.dart';
import 'package:mobile/screens/user/service/user.dart';

class UserController extends BaseController<UserModel, UserService> {
  UserController() : super(UserModel(), UserService());
}
