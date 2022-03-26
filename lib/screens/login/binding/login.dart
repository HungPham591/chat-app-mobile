import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/login/controller/login.dart';

class LoginBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
