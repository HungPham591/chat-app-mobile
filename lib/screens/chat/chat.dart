import 'package:flutter/material.dart';
import 'package:mobile/screens/chat/controller/chat.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class Chat extends BaseScreen<ChatController> {
  const Chat({Key? key}) : super(key: key);
  @override
  Widget body() {
    return MyScaffold(
      body: _Body(
        controller: controller,
      ),
      title: 'Chat',
    );
  }
}

class _Body extends StatelessWidget {
  final ChatController controller;
  const _Body({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Active',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          _ListPeople(controller: controller),
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              bottom: 10.0,
            ),
            child: Text(
              'Message',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          _ListMessage(controller: controller),
        ],
      ),
    );
  }
}

class _ListPeople extends StatelessWidget {
  final ChatController controller;
  const _ListPeople({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
          _People(controller: controller),
        ],
      ),
    );
  }
}

class _People extends StatelessWidget {
  final ChatController controller;
  const _People({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.black,
      ),
    );
  }
}

class _ListMessage extends StatelessWidget {
  final ChatController controller;
  const _ListMessage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
          _Message(controller: controller),
        ],
      ),
    );
  }
}

class _Message extends StatelessWidget {
  final ChatController controller;
  const _Message({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.black,
      ),
      onTap: controller.moveToMessage,
      title: const Text('Two-line ListTile'),
      subtitle: const Text('Here is a second line'),
    );
  }
}
