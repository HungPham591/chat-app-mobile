import 'package:get/get.dart';
import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:mobile/screens/discover/controller/discover.dart';

class DiscoverBinding implements BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverController>(() => DiscoverController());
  }
}
