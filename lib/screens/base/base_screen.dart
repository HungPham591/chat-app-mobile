import 'package:flutter/material.dart';
import 'package:mobile/screens/base/controller/base_controller.dart';
import 'package:get/get.dart';

abstract class BaseScreen<TController extends BaseController>
    extends GetView<TController> {
  const BaseScreen({Key? key}) : super(key: key);

  Widget body();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: body(),
        ),
      );
    });
  }
}
