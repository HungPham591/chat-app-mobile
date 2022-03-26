import 'package:mobile/screens/base/controller/base_controller.dart';

import 'package:mobile/screens/profile/model/profile.dart';
import 'package:mobile/screens/profile/service/profile.dart';

class ProfileController extends BaseController<ProfileModel, ProfileService> {
  ProfileController() : super(ProfileModel(), ProfileService());
  void onSettingTap() {
    moveToSetting();
  }

  void onAboutTap() {
    moveToAbout();
  }

  void onServiceTap() {
    moveToService();
  }
}
