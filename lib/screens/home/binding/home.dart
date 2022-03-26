import 'package:get/get.dart';
import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:mobile/screens/home/controller/home.dart';

class HomeBinding implements BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
