import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_button.dart';
import 'package:mobile/widgets/my_scaffold.dart';

import 'controller/setting.dart';

class Setting extends BaseScreen<SettingController> {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget body() {
    return MyScaffold(body: _Body(), title: "Setting");
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const _ProfileSetting(),
              const _QuerySetting(),
              const _Notification(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: MyButton(
                  title: "Delete account",
                  onTap: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileSetting extends StatelessWidget {
  const _ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Profile setting",
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phone number",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text("Phone number"),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Gender"),
              Text("Male"),
            ],
          ),
        )
      ],
    );
  }
}

class _QuerySetting extends StatelessWidget {
  const _QuerySetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find setting",
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Age"),
              Text("30"),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("interest in gender"),
              Text("Female"),
            ],
          ),
        ),
      ],
    );
  }
}

class _Notification extends StatelessWidget {
  const _Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notification",
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Message"),
                  Switch(
                    value: false,
                    onChanged: (value) => {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Stranger message"),
                  Switch(
                    value: false,
                    onChanged: (value) => {},
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
