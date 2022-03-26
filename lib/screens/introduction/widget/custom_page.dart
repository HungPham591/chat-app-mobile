import 'package:flutter/material.dart';
import 'package:mobile/widgets/my_button.dart';

class CustomPage extends StatelessWidget {
  final String title;
  final Widget body;
  const CustomPage({required this.title, required this.body, Key? key})
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
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 70.0),
            child: body,
          ),
          Expanded(child: Container()),
          MyButton(
            title: "Continue",
            onTap: () {},
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
