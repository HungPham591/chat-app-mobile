import 'package:flutter/material.dart';
import 'package:mobile/screens/about/controller/about.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class About extends BaseScreen<AboutController> {
  const About({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(body: _Body(), title: "About");
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("About"),
            ],
          ),
        ),
      ),
    );
  }
}
