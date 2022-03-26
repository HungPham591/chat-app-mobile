import 'app_routes.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/screens.dart' as Screens;
import 'package:mobile/screens/bindings.dart' as Bindings;

class AppScreen {
  static const initial = Routes.FLASH;

  static final routes = [
    GetPage(
      name: Routes.FLASH,
      page: () => const Screens.Flash(),
      binding: Bindings.FlashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const Screens.Home(),
      binding: Bindings.HomeBinding(),
    ),
    GetPage(
      name: Routes.USER,
      page: () => const Screens.User(),
      binding: Bindings.UserBinding(),
    ),
    GetPage(
      name: Routes.DISCOVER,
      page: () => const Screens.Discover(),
      binding: Bindings.DiscoverBinding(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => const Screens.Category(),
      binding: Bindings.CategoryBinding(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => const Screens.Chat(),
      binding: Bindings.ChatBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const Screens.Login(),
      binding: Bindings.LoginBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const Screens.Profile(),
      binding: Bindings.ProfileBinding(),
    ),
    GetPage(
      name: Routes.SETTING,
      page: () => const Screens.Setting(),
      binding: Bindings.SettingBinding(),
    ),
    GetPage(
      name: Routes.USER,
      page: () => const Screens.User(),
    ),
    GetPage(
      name: Routes.INTRODUCTION,
      page: () => const Screens.Introduction(),
      binding: Bindings.IntroductionBinding(),
    ),
    GetPage(
      name: Routes.MESSAGES,
      page: () => const Screens.Messages(),
      binding: Bindings.MessagesBinding(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const Screens.About(),
      binding: Bindings.AboutBiding(),
    ),
    GetPage(
      name: Routes.SERVICE,
      page: () => const Screens.Service(),
      binding: Bindings.ServiceBinding(),
    ),
    GetPage(
      name: Routes.LIST_PROFILE,
      page: () => const Screens.ListProfile(),
      binding: Bindings.ListProfileBinding(),
    ),
  ];
}
