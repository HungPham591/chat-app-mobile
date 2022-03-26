import 'package:mobile/screens/base/controller/base_controller.dart';

import 'package:mobile/screens/setting/model/setting.dart';
import 'package:mobile/screens/setting/service/service.dart';

class SettingController extends BaseController<SettingModel, SettingService> {
  SettingController() : super(SettingModel(), SettingService());
}
