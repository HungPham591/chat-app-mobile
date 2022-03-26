import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/chat/model/chat.dart';
import 'package:mobile/screens/chat/service/chat.dart';

class ChatController extends BaseController<ChatModel, ChatService> {
  ChatController() : super(ChatModel(), ChatService());
}
