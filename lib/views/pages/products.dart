import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/components/header_text.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';
import 'package:sport_horizon_flutter/views/components/popup_menu.dart';
import 'package:sport_horizon_flutter/views/components/product_grid.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi, Budi'),
        actions: [PopupMenu()],
      ),
      drawer: NavDrawer(),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [HeaderText('Products'), ProductGrid()],
        ),
      ),
    );
  }
}
