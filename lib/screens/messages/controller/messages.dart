import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/messages/model/messages.dart';
import 'package:mobile/screens/messages/service/messages.dart';

class MessagesController
    extends BaseController<MessagesModel, MessagesService> {
  MessagesController() : super(MessagesModel(), MessagesService());
}
