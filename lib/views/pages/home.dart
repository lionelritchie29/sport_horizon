import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';
import 'package:sport_horizon_flutter/views/components/popup_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi, Budi'),
        actions: [PopupMenu()],
      ),
      drawer: NavDrawer(),
      body: Center(child: const Text('test')),
    );
  }
}
