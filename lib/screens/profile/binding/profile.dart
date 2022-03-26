import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/profile/controller/profile.dart';

class ProfileBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
