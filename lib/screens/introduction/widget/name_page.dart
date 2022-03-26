import 'package:flutter/material.dart';
import 'package:mobile/screens/introduction/widget/custom_page.dart';
import 'package:mobile/widgets/my_button.dart';

class NamePage extends StatelessWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(title: "What is your name?", body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      autofocus: true,
      maxLength: 20,
      decoration: const InputDecoration(
        // icon: Icon(Icons.favorite),
        labelText: 'Full name',
        labelStyle: TextStyle(
          color: Color(0xFF6200EE),
        ),
        // helperText: 'Helper text',
        // suffixIcon: Icon(
        //   Icons.check_circle,
        // ),
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(color: Color(0xFF6200EE)),
        // ),
      ),
    );
  }
}
