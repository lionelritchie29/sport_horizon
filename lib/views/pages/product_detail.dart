import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/models/product.dart';
import 'package:sport_horizon_flutter/utils/global.dart';
import 'package:sport_horizon_flutter/views/components/popup_menu.dart';
import 'package:sport_horizon_flutter/views/components/product_detail_info.dart';
import 'package:sport_horizon_flutter/views/components/product_detail_reviews.dart';

class ProductDetailPage extends StatefulWidget {
  Product _product;

  ProductDetailPage(this._product);

  @override
  State<StatefulWidget> createState() => ProductDetailPageState(_product);
}

class ProductDetailPageState extends State<ProductDetailPage> {
  Product _product;

  ProductDetailPageState(this._product);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(),
            title: Text('Hi, $loggedUsername'),
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
          ),
          body: TabBarView(children: [
            ProductDetailInfo(_product),
            ProductDetailReview(_product)
          ]),
        ));
  }
}
