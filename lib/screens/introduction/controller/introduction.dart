import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/introduction/model/introduction.dart';
import 'package:mobile/screens/introduction/service/introduction.dart';
import 'package:mobile/shared/utils/regex.dart';

class IntroductionController
    extends BaseController<IntroductionModel, IntroductionService> {
  IntroductionController() : super(IntroductionModel(), IntroductionService());

  PageController pageController = PageController();

  final imagePicker = ImagePicker();

  void changePageIndex(int index) {
    model.pageIndex = index;
    update();
  }

  String? nameValidator(value) {
    if (value?.isEmpty) {
      return StringConstant.please_enter_your_name.tr;
    } else if (!Regex.isName(value)) {
      return StringConstant.please_enter_your_name.tr;
    } else {
      return null;
    }
  }

  void onNamePageContinueButtonOnClick() {
    jumpToNextPage();
  }

  void onBirthdayPageContinueButtonOnClick() {
    jumpToNextPage();
  }

  void onGenderPageContinueButtonOnClick() {
    jumpToNextPage();
  }

  void onInterestedInGenderPageContinueButtonOnClick() {
    jumpToNextPage();
  }

  void onPhotoPageContinueButtonOnClick() {
    moveOffAllToHome();
  }

  void onPageChange(int index) {
    changePageIndex(index);
  }

  void onButtonDonePress() {
    moveOffAllToHome();
  }

  void onNameInputOnChange(value) {
    model.userName = value;
  }

  void onBirthDayInputOnChange(DateTime value) {
    model.birthday = value.year;
  }

  void onGenderSelect(value) {
    model.gender = value;
    update();
  }

  void onInterestedInGenderSelect(value) {
    model.interestedInGender = value;
    update();
  }

  Future takeAPicture() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    if (image == null) return;
    model.image = File(image!.path);
    update();
  }

  Future pickImageFromLibary() async {
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    if (image == null) return;
    model.image = File(image!.path);
    update();
  }

  void jumpToNextPage() {
    pageController.animateToPage(
      model.pageIndex + 1,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
