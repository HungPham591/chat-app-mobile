import 'package:flutter/material.dart';
import 'package:mobile/screens/introduction/widget/custom_page.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(title: "What is your gender?", body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _MyChoiceChip(title: "Male", selected: true),
        SizedBox(height: 12),
        _MyChoiceChip(title: "Female", selected: false),
      ],
    );
  }
}

class _MyChoiceChip extends StatelessWidget {
  final String title;
  final bool selected;

  const _MyChoiceChip({Key? key, required this.title, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ChoiceChip(
        disabledColor: Colors.transparent,
        selectedColor: Colors.transparent,
        shape: const StadiumBorder(
          side: BorderSide(
            width: 1.5,
            color: Colors.black12,
          ),
        ),
        label: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          width: double.infinity,
        ),
        selected: selected,
      ),
    );
  }
}
