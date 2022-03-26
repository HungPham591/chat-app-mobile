import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/introduction/widget/custom_page.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class BirthdayPage extends StatelessWidget {
  const BirthdayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(title: 'When is your birthday?', body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OTPTextField(
      length: 4,
      width: double.infinity,
      fieldWidth: 60,
      style: const TextStyle(fontSize: 20),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onChanged: (text) {},
      onCompleted: (pin) {
        print("Completed: " + pin);
      },
    );
  }
}
