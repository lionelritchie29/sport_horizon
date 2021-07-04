import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi, Budi'),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text('Toggle Dark Theme'),
                      value: 1,
                    )
                  ])
        ],
      ),
      drawer: NavDrawer(),
      body: Center(child: const Text('test')),
    );
  }
}
