import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final String title;
  final bool extendBodyBehindAppBar;
  final double elevation;
  final List<Widget>? actions;
  final List<Widget>? Leftactions;
  final bool centerTitle;
  final bool backgroundTransparent;
  final double titleSpacing;
  const MyScaffold(
      {Key? key,
      required this.body,
      required this.title,
      this.extendBodyBehindAppBar = false,
      this.elevation = 0,
      this.actions,
      this.centerTitle = true,
      this.backgroundTransparent = false,
      this.Leftactions,
      this.titleSpacing = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Leftactions == null
            ? Text(
                title,
                style: TextStyle(
                  color: backgroundTransparent ? Colors.white : Colors.black,
                  fontSize: 20.0,
                ),
              )
            : Row(
                children: Leftactions ?? [],
              ),
        titleSpacing: titleSpacing,
        centerTitle: centerTitle,
        backgroundColor:
            backgroundTransparent ? Colors.transparent : Colors.white,
        elevation: elevation,
        iconTheme: IconThemeData(
            color: backgroundTransparent ? Colors.white : Colors.black),
        actions: actions,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: body,
      ),
    );
  }
}
