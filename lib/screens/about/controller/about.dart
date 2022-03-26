import 'package:mobile/screens/about/model/about.dart';
import 'package:mobile/screens/about/service/about.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';

class AboutController extends BaseController<AboutModel, AboutService> {
  AboutController() : super(AboutModel(), AboutService());
  @override
  void onInit() {
    super.onInit();
  }

  void getAppInfo() async {}
}
