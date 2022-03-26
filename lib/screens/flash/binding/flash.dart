import 'package:get/get.dart';
import 'package:mobile/screens/flash/controller/flash.dart';

class FlashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<FlashController>(FlashController());
  }
}
