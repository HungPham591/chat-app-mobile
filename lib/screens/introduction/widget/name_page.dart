import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';
import 'package:mobile/widgets/my_button.dart';

class NamePage extends StatelessWidget {
  final IntroductionController controller;
  const NamePage({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              StringConstant.what_is_your_name.tr,
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
            onTap: controller.onNamePageContinueButtonOnClick,
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final IntroductionController controller;
  _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.model.formKey,
      child: TextFormField(
        onChanged: (value) => controller.model.userName = value,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: controller.nameValidator,
        cursorColor: Theme.of(context).cursorColor,
        maxLength: 20,
        decoration: InputDecoration(
          labelText: StringConstant.what_is_your_name.tr,
        ),
      ),
    );
  }
}
