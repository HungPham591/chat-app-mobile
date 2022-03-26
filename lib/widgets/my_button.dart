import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final IconData? icon;
  final String title;
  final VoidCallback onTap;
  const MyButton(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.color,
      this.textColor = Colors.black,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              icon,
              color: textColor,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(width: 0.0, color: color),
        ),
      ),
    );
  }
}
