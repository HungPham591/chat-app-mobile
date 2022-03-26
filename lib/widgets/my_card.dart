import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget body;
  final String imagePath;
  final bool internet;
  const MyCard(
      {Key? key,
      required this.body,
      required this.imagePath,
      required this.internet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider image =
        internet ? AssetImage(imagePath) : AssetImage(imagePath);
    return ClipRRect(
      key: key,
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF343434).withOpacity(0.7),
                  const Color(0xFF343434).withOpacity(0.15),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          body
        ],
      ),
    );
  }
}
