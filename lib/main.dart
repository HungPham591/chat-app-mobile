import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/lang/lang.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:mobile/routes/app_pages.dart';
import 'app_binding.dart';
import 'theme/theme.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppScreen.initial,
      defaultTransition: Transition.fade,
      getPages: AppScreen.routes,
      initialBinding: AppBinding(),
      smartManagement: SmartManagement.keepFactory,
      title: 'chat app',
      theme: ThemeConfig.lightTheme,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      builder: EasyLoading.init(),
    );
  }
}
//builder can be used to wrap your route-widgets with a parent widget