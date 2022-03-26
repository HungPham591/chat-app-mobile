import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/messages/controller/messages.dart';

class MessagesBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<MessagesController>(() => MessagesController());
  }
}
