import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/screens/flash/controller/flash.dart';

class Flash extends BaseScreen<FlashController> {
  const Flash({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: const Center(
        child: FlutterLogo(
          size: 100.0,
        ),
      ),
    );
  }
}
