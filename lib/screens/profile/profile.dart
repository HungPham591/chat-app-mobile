import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_scaffold.dart';

import 'controller/profile.dart';

class Profile extends BaseScreen<ProfileController> {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _Profile(),
            _Menu(
              controller: controller,
            ),
          ],
        ),
      ),
      title: "Profile",
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: 87,
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 80,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -15,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: const Color(0xFFF5F6F9),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    shape: const CircleBorder(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Hung Pham, 20',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Sinh vien tai CTU',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Edit profile",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  final ProfileController controller;
  const _Menu({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          GestureDetector(
            onTap: controller.onSettingTap,
            child: const _ItemMenu(
              title: "Thiết lặp",
            ),
          ),
          GestureDetector(
            onTap: controller.onServiceTap,
            child: const _ItemMenu(
              title: "Dịch vụ",
            ),
          ),
          GestureDetector(
            onTap: controller.onAboutTap,
            child: const _ItemMenu(
              title: "Về ứng dụng",
            ),
          ),
          GestureDetector(
            child: const _ItemMenu(
              title: "Đăng xuất",
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemMenu extends StatelessWidget {
  final String title;
  const _ItemMenu({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
