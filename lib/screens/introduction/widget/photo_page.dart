import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/screens/introduction/widget/custom_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile/widgets/my_button.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
        title: "You need a photo to use app", body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
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
                  onTap: () =>
                      ImagePicker().pickImage(source: ImageSource.camera),
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
                  onTap: () =>
                      ImagePicker().pickImage(source: ImageSource.gallery),
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
