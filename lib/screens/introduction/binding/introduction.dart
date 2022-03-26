import 'package:get/get.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionController>(() => IntroductionController());
  }
}
