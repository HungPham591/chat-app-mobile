import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/service/controller/service.dart';

class ServiceBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}
