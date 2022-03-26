import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/list_profile/controller/list_profile.dart';

class ListProfileBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ListProfileController>(() => ListProfileController());
  }
}
