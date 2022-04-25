import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/home/model/home.dart';
import 'package:mobile/screens/home/model/user_post.dart';
import 'package:mobile/screens/home/service/home.dart';
import 'package:mobile/screens/home/widget/conversation_bottom_sheet.dart';
import 'package:mobile/screens/home/widget/filter_bottom_sheet.dart';
import 'package:mobile/screens/home/widget/question_dialog.dart';
import 'package:mobile/shared/utils/model.dart';

import '../../base/controller/base_controller.dart';

class HomeController extends BaseController<HomeModel, HomeService> {
  HomeController() : super(HomeModel(), HomeService());
  @override
  void onInit() {
    loadPost();
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

  void onLikeButtonPress(int index) {
    model.listPost![index].liked = true;
    update();
  }

  void onAskUserButtonPress(int index) {
    UserPost post = model.listPost![index];
    Get.defaultDialog(
      title: '${StringConstant.ask.tr} ${post.user?.name}',
      titleStyle: const TextStyle(fontSize: 20),
      titlePadding: const EdgeInsets.all(15),
      contentPadding:
          const EdgeInsets.only(top: 20, bottom: 5, left: 15, right: 15),
      content: QuestionDialog(
        controller: this,
        userId: post.user?.id ?? "",
        toUser: true,
      ),
    );
  }

  void onNewConversationButtonPress() {
    Get.bottomSheet(
      ConversationBottomSheet(
        controller: this,
      ),
    );
  }

  void onAskButtonPress() {
    Get.back();
    Get.defaultDialog(
      title: StringConstant.new_question.tr,
      titleStyle: const TextStyle(fontSize: 20),
      titlePadding: const EdgeInsets.all(15),
      contentPadding:
          const EdgeInsets.only(top: 20, bottom: 5, left: 15, right: 15),
      content: QuestionDialog(
        controller: this,
        toUser: false,
      ),
    );
  }

  void onVideoCallButtonPress() {
    Get.back();
  }

  void onVoiceCallButtonPress() {
    Get.back();
  }

  void onButtonFilterPress() {
    Get.bottomSheet(
      FilterBottomSheet(
        controller: this,
      ),
    );
  }

  void onFilterCompleteButtonPress() {}

  void onSendQuestionToUserButtonPress(String userId, String question) {}

  void onSendQuestionButtonPress(String question) {}

  void loadPost() {
    model.listPost = [
      UserPost(
        user: const User(
          avatar: 'assets/images/girl.jpg',
          birthday: 1999,
          name: "Hung Pham",
        ),
        question: const Question(
          content: 'What is your name?',
        ),
        content: "My name is Hung",
      ),
      UserPost(
        user: const User(
          avatar: 'assets/images/girl.jpg',
          birthday: 1999,
          name: "Hung Pham",
        ),
        question: const Question(
          content: 'What is your name?',
        ),
        content: "My name is Hung",
      ),
      UserPost(
        user: const User(
          avatar: 'assets/images/girl.jpg',
          birthday: 1999,
          name: "Hung Pham",
        ),
        question: const Question(
          content: 'What is your name?',
        ),
        content: "My name is Hung",
      ),
    ];
  }

  String? questionValidator(value) {
    // if (value?.isEmpty) {
    //   return StringConstant.please_enter_your_name.tr;
    // } else if (!Regex.isName(value)) {
    //   return StringConstant.please_enter_your_name.tr;
    // } else {
    //   return null;
    // }
    return null;
  }

  int getAge(int birthday) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return date.year - birthday;
  }
}
