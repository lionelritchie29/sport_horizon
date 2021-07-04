import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: const Text(' '),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.png"), fit: BoxFit.contain)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Products'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
