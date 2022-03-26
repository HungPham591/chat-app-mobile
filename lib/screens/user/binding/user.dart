import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/user/controller/user.dart';

class UserBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
