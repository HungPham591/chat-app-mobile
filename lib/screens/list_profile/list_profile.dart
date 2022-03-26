import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/screens/list_profile/controller/list_profile.dart';
import 'package:mobile/widgets/my_card.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class ListProfile extends BaseScreen<ListProfileController> {
  const ListProfile({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(
      title: "List profile",
      actions: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.more_vert,
            size: 30,
          ),
        )
      ],
      body: PageView(
        padEnds: false,
        scrollDirection: Axis.vertical,
        controller: controller.pageController,
        children: const [
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        child: MyCard(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _CardContent(),
                _CardFooter(),
              ],
            ),
          ),
          imagePath: "assets/images/girl.jpg",
          internet: false,
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          children: [
            TextSpan(
              text: 'Hung Pham  ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
            TextSpan(text: '23\n', style: TextStyle(fontSize: 26)),
            TextSpan(text: 'Sinh vien CTU'),
          ],
        ),
      ),
    );
  }
}

class _CardFooter extends StatelessWidget {
  const _CardFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                border: InputBorder.none,
                hintText: 'Type message...',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
