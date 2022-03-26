import 'package:flutter/material.dart';
import 'package:mobile/screens/home/controller/home.dart';

class UserLocationMarker extends StatelessWidget {
  const UserLocationMarker(
      {Key? key, required this.controller, this.active = false})
      : super(key: key);
  final bool active;
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: active ? 1 : 0.5,
      child: Column(
        children: [
          const SizedBox(
            height: 60.0,
            width: 60.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 26.0,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 38.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Text(
              "Me",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
