import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  final String content;
  const MySnackBar({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
