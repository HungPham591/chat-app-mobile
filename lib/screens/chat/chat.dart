import 'package:flutter/material.dart';
import 'package:mobile/screens/chat/controller/chat.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_scaffold.dart';

class Chat extends BaseScreen<ChatController> {
  const Chat({Key? key}) : super(key: key);
  @override
  Widget body() {
    return MyScaffold(
      body: _ListMessage(
        controller: controller,
      ),
      title: 'Chat',
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
