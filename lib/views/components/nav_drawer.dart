import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/pages/home.dart';
import 'package:sport_horizon_flutter/views/pages/products.dart';

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
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())),
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
          ),
        ],
      ),
    );
  }
}
