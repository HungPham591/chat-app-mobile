import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/home/model/home.dart';
import 'package:mobile/screens/home/service/home.dart';
import '../../base/controller/base_controller.dart';
import "package:latlong2/latlong.dart" as latlng;
import '../../variables.dart' as globalVariables;

class HomeController extends BaseController<HomeModel, HomeService>
    with SingleGetTickerProviderMixin {
  HomeController() : super(HomeModel(), HomeService());
  late AnimationController animationController;
  @override
  void onInit() {
    model.currentPosition = globalVariables.currentPosition;
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationController.repeat(reverse: true);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void onProfilePress() {
    moveToProfile();
  }

  void onChatPress() {
    moveToChat();
  }

  void onDiscoverPress() {
    moveToDiscover();
  }

  void onCategoryPress() {
    moveToCategory();
  }

  void onMapTap(var tapPosition, var latLng) {
    Get.snackbar('title', 'Could not find any user here');
  }

  void onMyMarkerTap() {
    Get.snackbar('title', 'You are in ghost mode');
  }

  void onUserMarkerTap() {
    Get.snackbar('title', 'You are in ghost mode');
  }

  void loadMore() {}
}
