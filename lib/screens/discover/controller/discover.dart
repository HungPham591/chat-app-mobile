import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/discover/model/discover.dart';
import 'package:mobile/screens/discover/service/discover.dart';

class DiscoverController
    extends BaseController<DiscoverModel, DiscoverService> {
  DiscoverController() : super(DiscoverModel(), DiscoverService());
  late PageController pageController;
  @override
  void onInit() {
    pageController = PageController(viewportFraction: 0.95);
    super.onInit();
  }

  void onCardTap() {
    moveToUser();
  }
}
