import 'package:mobile/screens/base/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/service/controller/service.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class Service extends BaseScreen<ServiceController> {
  const Service({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(body: _Body(), title: "Service");
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
