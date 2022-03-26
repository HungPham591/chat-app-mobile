import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/home/controller/home.dart';
import 'package:mobile/screens/home/widget/bottom_sheet.dart';
import 'package:mobile/screens/home/widget/map.dart';
import 'package:mobile/theme/theme.dart';
import 'package:get/get.dart';

class Home extends BaseScreen<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget body() {
    return Scaffold(
      body: _Body(
        controller: controller,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Discover',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final HomeController controller;
  const _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomMap(controller: controller),
        Positioned(
          child: _AppBar(
            controller: controller,
          ),
          left: 0,
          right: 0,
          top: 0,
        ),
        Positioned(
          child: _NavigationBar(
            controller: controller,
          ),
          left: 0,
          right: 0,
          bottom: 0,
        ),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  final HomeController controller;
  const _AppBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF343434).withOpacity(0.4),
            const Color(0xFF343434).withOpacity(0.0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: controller.onProfilePress,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
              child: const Icon(
                CupertinoIcons.gear,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
          const _Title(),
          InkWell(
            onTap: controller.onChatPress,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
              child: const Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  final HomeController controller;
  const _NavigationBar({Key? key, required this.controller}) : super(key: key);

  void showBottomSheet() {
    Get.bottomSheet(
      const CustomBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF343434).withOpacity(0.4),
            const Color(0xFF343434).withOpacity(0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: controller.onDiscoverPress,
            child: Icon(
              Icons.public,
              color: ThemeConfig.lightTheme.primaryColor,
              size: 25,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              primary: Colors.white,
              onPrimary: Colors.red,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: ThemeConfig.lightTheme.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: showBottomSheet,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          CupertinoIcons.gear,
                          size: 20.0,
                          color: ThemeConfig.lightTheme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 20),
                      child: Row(
                        children: const [
                          Text(
                            "Sport",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            CupertinoIcons.search,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: controller.onCategoryPress,
            child: Icon(
              Icons.explore_outlined,
              color: ThemeConfig.lightTheme.primaryColor,
              size: 25,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              primary: Colors.white,
              onPrimary: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
