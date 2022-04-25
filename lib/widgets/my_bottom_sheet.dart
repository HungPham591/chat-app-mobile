import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  final String title;
  final Widget body;
  const MyBottomSheet({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Wrap(
        children: <Widget>[
          Center(
            child: Container(
              width: 30.0,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 30,
                ),
                body
              ],
            ),
          ),
        ],
      ),
    );
  }
}
