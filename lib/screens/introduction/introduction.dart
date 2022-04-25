import 'package:flutter/material.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/screens/introduction/widget/birthday_page.dart';
import 'package:mobile/screens/introduction/widget/gender_page.dart';
import 'package:mobile/screens/introduction/widget/interested_in_gender_page.dart';
import 'package:mobile/screens/introduction/widget/name_page.dart';
import 'package:mobile/screens/introduction/widget/photo_page.dart';
import 'package:mobile/widgets/my_button.dart';

class Introduction extends BaseScreen<IntroductionController> {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Scaffold(
      body: _Body(controller: controller),
    );
  }
}

class _Body extends StatelessWidget {
  final IntroductionController controller;
  const _Body({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              onPageChanged: controller.onPageChange,
              children: [
                NamePage(
                  controller: controller,
                ),
                BirthdayPage(
                  controller: controller,
                ),
                GenderPage(
                  controller: controller,
                ),
                InterestedInGenderPage(
                  controller: controller,
                ),
                PhotoPage(
                  controller: controller,
                ),
              ],
            ),
          ),
          _BottomNavigationBar(
            controller: controller,
          ),
        ],
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final IntroductionController controller;
  const _BottomNavigationBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
      child: MyButton(
        title: "Register using Facebook",
        onTap: controller.onButtonDonePress,
        color: Colors.white,
        textColor: Colors.blue,
      ),
    );
  }
}
