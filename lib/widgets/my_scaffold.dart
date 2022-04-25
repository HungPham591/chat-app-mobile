import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final bool extendBodyBehindAppBar;
  final double elevation;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;
  final bool backgroundTransparent;
  final double titleSpacing;
  final Widget? floatingActionButton;
  final bool floatingActionButtonCenter;
  const MyScaffold({
    Key? key,
    required this.body,
    required this.title,
    this.floatingActionButton,
    this.extendBodyBehindAppBar = false,
    this.elevation = 0,
    this.actions,
    this.centerTitle = true,
    this.backgroundTransparent = false,
    this.leading,
    this.titleSpacing = 0,
    this.floatingActionButtonCenter = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: backgroundTransparent ? Colors.white : Colors.black,
            fontSize: 20.0,
          ),
        ),
        titleSpacing: titleSpacing,
        centerTitle: centerTitle,
        backgroundColor:
            backgroundTransparent ? Colors.transparent : Colors.white,
        elevation: elevation,
        iconTheme: IconThemeData(
            color: backgroundTransparent ? Colors.white : Colors.black),
        actions: actions,
        leading: leading ?? _BackButton(),
      ),
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonCenter
          ? FloatingActionButtonLocation.centerFloat
          : FloatingActionButtonLocation.endDocked,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: body,
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back_ios),
    );
  }
}
