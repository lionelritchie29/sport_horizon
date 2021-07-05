import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/utils/global.dart';
import 'package:sport_horizon_flutter/views/components/brand_carousel.dart';
import 'package:sport_horizon_flutter/views/components/category_grid.dart';
import 'package:sport_horizon_flutter/views/components/header_text.dart';
import 'package:sport_horizon_flutter/views/components/nav_drawer.dart';
import 'package:sport_horizon_flutter/views/components/popup_menu.dart';
import 'package:sport_horizon_flutter/views/components/promo_carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, $loggedUsername'),
        actions: [PopupMenu()],
      ),
      drawer: NavDrawer(),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            HeaderText('Featured Deals'),
            PromoCarousel(),
            HeaderText('Top Category'),
            CategoryGrid(),
            HeaderText('Brands'),
            BrandCarousel(),
            HeaderText('About Sport Horizon'),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                  'Founded in 2021, Sport Horizon is an online sport apparel store. We sell any kind of sport equipments such as shoes and swimming suit from exclusive brands such as New Balance, Adidas, Nike, and more.'),
            )
          ],
        ),
      ),
    );
  }
}
