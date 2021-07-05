import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/data/products.dart';
import 'package:sport_horizon_flutter/models/product.dart';
import 'package:sport_horizon_flutter/models/product_review.dart';

class ProductDetailReview extends StatefulWidget {
  Product _product;

  ProductDetailReview(this._product);

  @override
  State<StatefulWidget> createState() => ProductDetailReviewState(_product);
}

class ProductDetailReviewState extends State<ProductDetailReview> {
  Product _product;

  ProductDetailReviewState(this._product);

  List<Widget> getChildren() {
    return _product.reviews.map((review) {
      return Card(
        child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(review.username,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Divider(color: Colors.grey),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(review.content),
                )
              ],
            )),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return _product.reviews.length > 0
        ? Container(
            padding: EdgeInsets.only(top: 10),
            child: ListView(
              children: getChildren(),
            ))
        : Center(child: Text('Oops, there is no review for this product yet.'));
  }
}
