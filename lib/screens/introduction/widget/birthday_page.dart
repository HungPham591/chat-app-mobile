import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';
import 'package:mobile/widgets/my_button.dart';

class BirthdayPage extends StatelessWidget {
  const BirthdayPage({Key? key, required this.controller}) : super(key: key);
  final IntroductionController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              StringConstant.when_is_your_birthday.tr,
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
            onTap: controller.onBirthdayPageContinueButtonOnClick,
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
    return Center(
      child: Container(
        height: 200,
        child: CupertinoDatePicker(
          // use24hFormat: false,
          mode: CupertinoDatePickerMode.date,
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (value) {},
        ),
      ),
    );
  }
}
