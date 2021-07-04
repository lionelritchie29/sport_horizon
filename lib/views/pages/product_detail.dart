import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';
import 'package:sport_horizon_flutter/views/components/popup_menu.dart';
import 'package:sport_horizon_flutter/views/components/product_detail_info.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Hi, Budi'),
            bottom: TabBar(tabs: [
              ListTile(
                  title:
                      const Text('Info', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.info, color: Colors.white)),
              ListTile(
                  title: const Text('Reviews',
                      style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.star, color: Colors.white)),
            ]),
            actions: [PopupMenu()],
          ),
          body:
              TabBarView(children: [ProductDetailInfo(), ProductDetailInfo()]),
          drawer: NavDrawer(),
        ));
  }
}
