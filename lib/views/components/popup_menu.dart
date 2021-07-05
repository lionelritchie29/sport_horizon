import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/utils/global.dart';

class PopupMenu extends StatefulWidget {
  final Function updateDarkThemeState;

  PopupMenu(this.updateDarkThemeState);

  @override
  State<StatefulWidget> createState() => PopupMenuState(updateDarkThemeState);
}

class PopupMenuState extends State<PopupMenu> {
  final Function updateDarkThemeState;

  PopupMenuState(this.updateDarkThemeState);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  title: const Text('Toggle Dark Theme'),
                  onTap: () {
                    updateDarkThemeState();
                  },
                ),
                value: 1,
              )
            ]);
  }
}
