import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/list_profile/model/list_profile.dart';
import 'package:mobile/screens/list_profile/service/list_profile.dart';

class ListProfileController
    extends BaseController<ListProfileModel, ListProfileService> {
  ListProfileController() : super(ListProfileModel(), ListProfileService());
  late PageController pageController;
  @override
  void onInit() {
    pageController = PageController(viewportFraction: 0.95);
    super.onInit();
  }
}
