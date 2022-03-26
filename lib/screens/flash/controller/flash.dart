import 'package:mobile/screens/flash/model/flash.dart';
import 'package:mobile/screens/flash/service/flash.dart';
import '../../base/controller/base_controller.dart';
import '../../variables.dart' as globalVariables;

class FlashController extends BaseController<FlashModel, FlashService> {
  FlashController() : super(FlashModel(), FlashService());

  @override
  void onInit() async {
    globalVariables.currentPosition = await this.service.determinePosition();
    moveOffAllToLogin();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
