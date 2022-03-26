import 'package:flutter/material.dart';
import 'package:mobile/screens/home/controller/home.dart';

class MyLocationMarker extends StatelessWidget {
  final HomeController controller;
  const MyLocationMarker({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.onMyMarkerTap,
      child: Stack(
        children: const [
          Center(
            child: SizedBox(
              height: 60.0,
              width: 60.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 26.0,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
