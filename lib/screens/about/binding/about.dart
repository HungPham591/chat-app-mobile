import 'package:mobile/screens/about/controller/about.dart';
import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';

class AboutBiding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(() => AboutController());
  }
}
