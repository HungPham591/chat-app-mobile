import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/screens/home/controller/home.dart';
import 'package:mobile/screens/home/widget/anwser_card.dart';
import 'package:mobile/screens/home/widget/ask_floatingactionbutton.dart';
import 'package:mobile/shared/constants/constants.dart';
import 'package:mobile/widgets/my_scaffold.dart';

import 'model/user_post.dart';

class Home extends BaseScreen<HomeController> {
  const Home({Key? key}) : super(key: key);
  @override
  Widget body() {
    return MyScaffold(
      body: _Body(controller: controller),
      title: 'Chat app',
      centerTitle: true,
      backgroundTransparent: false,
      leading: IconButton(
        onPressed: controller.onProfilePress,
        icon: const Icon(FontAwesomeIcons.user),
      ),
      actions: [
        IconButton(
          onPressed: controller.onChatPress,
          icon: const Icon(FontAwesomeIcons.commentAlt),
        )
      ],
      floatingActionButton: CustomFloatingActionButton(
        controller: controller,
      ),
      floatingActionButtonCenter: true,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

  final double cardHeight = 100;
  final double paddingBetweenCard = 7;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: paddingBetweenCard,
            mainAxisSpacing: paddingBetweenCard + 5,
            scrollDirection: Axis.vertical,
            childAspectRatio: 2,
            shrinkWrap: true,
            children: const [
              _Banner(
                title: "Nearby",
                color: '#20bf55',
              ),
              _Banner(
                title: "People",
                color: '#01baef',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringConstant.list.tr,
                  style: Theme.of(context).textTheme.headline4,
                ),
                GestureDetector(
                  onTap: controller.onButtonFilterPress,
                  child: const Icon(
                    Icons.filter_list,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.model.listPost?.length,
            itemBuilder: (BuildContext context, int index) {
              UserPost post = controller.model.listPost![index];
              return AnswerCard(
                index: index,
                avatar: post.user?.avatar,
                question: post.question?.content,
                answer: post.content,
                age: controller.getAge(post.user?.birthday ?? 0),
                name: post.user?.name,
                liked: post.liked,
                controller: controller,
              );
            },
          )
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  final String title;
  final String color;
  const _Banner({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 140,
        color: hexToColor(color),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
