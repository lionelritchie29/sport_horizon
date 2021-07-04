import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopupMenuState();
}

class PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Toggle Dark Theme'),
                value: 1,
              )
            ]);
  }
}
