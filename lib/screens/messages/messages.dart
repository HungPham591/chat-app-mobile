import 'package:flutter/material.dart';
import 'package:mobile/screens/base/base_screen.dart';
import 'package:mobile/widgets/my_scaffold.dart';

import 'controller/messages.dart';

class Messages extends BaseScreen<MessagesController> {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget body() {
    return const MyScaffold(
      body: _Body(),
      title: "Micheal",
      centerTitle: false,
      elevation: 1.0,
      actions: [
        Icon(
          Icons.more_vert,
          size: 30,
        ),
        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: const [
          _ListMessages(),
          _TextFieldRow(),
        ],
      ),
    );
  }
}

class _ListMessages extends StatelessWidget {
  const _ListMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
          _Message(isSender: true),
          _Message(isSender: false),
        ],
      ),
    );
  }
}

class _Message extends StatelessWidget {
  final bool isSender;
  const _Message({Key? key, required this.isSender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 1.5,
            ),
            decoration: BoxDecoration(
              color: isSender
                  ? Colors.blue.withOpacity(0.5)
                  : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Hello HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello",
            ),
          )
        ],
      ),
    );
  }
}

class _TextFieldRow extends StatelessWidget {
  const _TextFieldRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  hintText: 'Type message',
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.send,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
