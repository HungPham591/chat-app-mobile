import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile/screens/home/controller/home.dart';
import 'package:mobile/theme/theme.dart';

class MyLocationMarkerActive extends AnimatedWidget {
  const MyLocationMarkerActive(Animation<double> animation,
      {Key? key, required this.controller})
      : super(key: key, listenable: animation);
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    final value = (listenable as Animation<double>).value;
    final newValue = lerpDouble(0.5, 1.0, value);
    const size = 200.0;
    return Stack(
      children: [
        Center(
          child: Container(
            height: size * newValue!,
            width: size * newValue,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ThemeConfig.lightTheme.primaryColor.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
