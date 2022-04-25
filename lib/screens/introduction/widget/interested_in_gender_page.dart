import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';
import 'package:mobile/shared/constants/colors.dart';
import 'package:mobile/widgets/my_button.dart';

class InterestedInGenderPage extends StatelessWidget {
  final IntroductionController controller;
  const InterestedInGenderPage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              StringConstant.what_is_your_interested_in_gender.tr,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 70.0),
            child: _Body(controller: controller),
          ),
          Expanded(child: Container()),
          MyButton(
            title: StringConstant.continue_button.tr,
            onTap: controller.onInterestedInGenderPageContinueButtonOnClick,
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
    ;
  }
}

class _Body extends StatelessWidget {
  final IntroductionController controller;
  const _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MyChoiceChip(
          title: StringConstant.male.tr,
          selected: controller.model.interestedInGender,
          value: true,
          controller: controller,
        ),
        const SizedBox(height: 12),
        _MyChoiceChip(
          title: StringConstant.female.tr,
          selected: !controller.model.interestedInGender,
          value: false,
          controller: controller,
        ),
      ],
    );
  }
}

class _MyChoiceChip extends StatelessWidget {
  final String title;
  final bool selected;
  final Color choiceChipUnselectedColor = hexToColor("#969896");
  final Color choiceChipSelectedColors = ColorConstants.secondaryAppColor;
  final bool value;
  final IntroductionController controller;

  _MyChoiceChip(
      {Key? key,
      required this.title,
      required this.selected,
      required this.value,
      required this.controller})
      : super(key: key);

  Widget build(BuildContext context) {
    log(controller.model.interestedInGender.toString());
    return GestureDetector(
      onTap: () => controller.onInterestedInGenderSelect(value),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 1.5,
            color:
                selected ? choiceChipSelectedColors : choiceChipUnselectedColor,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: selected
                  ? choiceChipSelectedColors
                  : choiceChipUnselectedColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        width: double.infinity,
      ),
    );
  }
}
