import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:mobile/screens/introduction/model/introduction.dart';
import 'package:mobile/screens/introduction/service/introduction.dart';

class IntroductionController
    extends BaseController<IntroductionModel, IntroductionService> {
  IntroductionController() : super(IntroductionModel(), IntroductionService());

  PageController pageController = PageController();

  void changePageIndex(int index) {
    model.pageIndex = index;
    update();
  }

  void onPageChange(int index) {
    changePageIndex(index);
  }

  void onButtonDonePress() {
    moveOffAllToHome();
  }
}
