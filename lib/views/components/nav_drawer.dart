import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/utils/global.dart';
import 'package:sport_horizon_flutter/views/pages/home.dart';
import 'package:sport_horizon_flutter/views/pages/login.dart';
import 'package:sport_horizon_flutter/views/pages/products.dart';

class NavDrawer extends StatelessWidget {
  final Function() updateDarkThemeState;

  NavDrawer(this.updateDarkThemeState);

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
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Products'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductPage())),
          ),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(updateDarkThemeState)),
                    (route) => false);
              }),
        ],
      ),
    );
  }
}
