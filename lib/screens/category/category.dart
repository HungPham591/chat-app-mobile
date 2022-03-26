import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/screens/category/controller/category.dart';
import 'package:mobile/widgets/my_card.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class Category extends BaseScreen<CategoryController> {
  const Category({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(
      title: "Category",
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: controller.model.listCategoryPane.length,
        itemBuilder: (BuildContext context, int index) {
          return _Card(
            title: controller.model.listCategoryPane[index].title,
            imgPath: controller.model.listCategoryPane[index].imgPath,
            code: controller.model.listCategoryPane[index].code,
            key: Key(index.toString()),
            controller: controller,
          );
        },
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String title;
  final String imgPath;
  final int code;
  final CategoryController controller;
  const _Card(
      {required this.title,
      required this.controller,
      required this.imgPath,
      required this.code,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key(code.toString()),
      onTap: controller.moveToListProfile,
      child: MyCard(
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        imagePath: imgPath,
        internet: false,
      ),
    );
  }
}
