import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:mobile/lang/string_constant.dart';
import 'package:mobile/screens/introduction/controller/introduction.dart';
import 'package:mobile/widgets/my_button.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key, required this.controller}) : super(key: key);
  final IntroductionController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              StringConstant.you_need_a_photo_to_use_app.tr,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 70.0),
            child: _Body(controller: controller),
          ),
          Expanded(child: Container()),
          MyButton(
            title: StringConstant.continue_button.tr,
            onTap: controller.onPhotoPageContinueButtonOnClick,
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
    ;
  }
}

class _Body extends StatelessWidget {
  final IntroductionController controller;
  const _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _Picture(
          controller: controller,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyButton(
                  title: "Camera",
                  onTap: controller.takeAPicture,
                  color: Colors.blue,
                  textColor: Colors.white,
                  icon: Icons.camera_alt,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: MyButton(
                  title: "Galery",
                  onTap: controller.pickImageFromLibary,
                  color: Colors.blue,
                  textColor: Colors.white,
                  icon: FontAwesomeIcons.solidImage,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _Picture extends StatelessWidget {
  final IntroductionController controller;
  const _Picture({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: controller.model.image != null
            ? Image.file(
                controller.model.image ?? File(''),
                fit: BoxFit.cover,
              )
            : Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: const Center(
                  child: Icon(
                    Icons.photo,
                    size: 50,
                  ),
                ),
              ),
      ),
    );
  }
}
