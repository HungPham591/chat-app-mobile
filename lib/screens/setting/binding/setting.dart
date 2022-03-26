import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/setting/controller/setting.dart';

class SettingBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
