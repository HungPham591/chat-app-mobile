import 'package:mobile/screens/flash/model/flash.dart';
import 'package:mobile/screens/flash/service/flash.dart';
import '../../base/controller/base_controller.dart';

class FlashController extends BaseController<FlashModel, FlashService> {
  FlashController() : super(FlashModel(), FlashService());

  @override
  void onInit() async {
    Future.delayed(const Duration(milliseconds: 1000), moveOffAllToLogin);
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
