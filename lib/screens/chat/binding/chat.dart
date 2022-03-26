import 'package:get/get.dart';
import 'package:mobile/screens/base/binding/base_binding.dart';
import 'package:mobile/screens/chat/controller/chat.dart';

class ChatBinding implements BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}
