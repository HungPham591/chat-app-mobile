import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile/routes/app_routes.dart';

class BaseController<TModel, TService> extends GetxController {
  late final TModel model;
  late final TService service;
  BaseController(var model, var service) {
    this.model = model;
    this.service = service;
  }
  void onBackPress() {
    Get.back();
  }

  void showSnackBar(String title, String content) {
    Get.snackbar(title, content);
  }

  void showDialog(Widget dialog) {
    Get.dialog(dialog);
  }

  void showBottomSheet() {}

  void moveToChat() {
    Get.toNamed(Routes.CHAT);
  }

  void moveToFlash() {
    Get.toNamed(Routes.FLASH);
  }

  void moveToHome() {
    Get.toNamed(Routes.HOME);
  }

  void moveToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void moveToProfile() {
    Get.toNamed(Routes.PROFILE);
  }

  void moveToSetting() {
    Get.toNamed(Routes.SETTING);
  }

  void moveToUser() {
    Get.toNamed(Routes.USER);
  }

  void moveToIntroduction() {
    Get.toNamed(Routes.INTRODUCTION);
  }

  void moveToMessage() {
    Get.toNamed(Routes.MESSAGES);
  }

  void moveToDiscover() {
    Get.toNamed(Routes.DISCOVER);
  }

  void moveToCategory() {
    Get.toNamed(Routes.CATEGORY);
  }

  void moveToAbout() {
    Get.toNamed(Routes.ABOUT);
  }

  void moveToService() {
    Get.toNamed(Routes.SERVICE);
  }

  void moveToListProfile() {
    Get.toNamed(Routes.LIST_PROFILE);
  }

  //move off all
  void moveOffAllToHome() {
    Get.offAllNamed(Routes.HOME);
  }

  void moveOffAllToIntroduction() {
    Get.offAllNamed(Routes.INTRODUCTION);
  }

  void moveOffAllToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

  //move off
  void moveOffToHome() {
    Get.offNamed(Routes.HOME);
  }

  void moveOffToIntroduction() {
    Get.offNamed(Routes.INTRODUCTION);
  }
}
