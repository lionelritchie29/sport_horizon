import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/models/product.dart';
import 'package:sport_horizon_flutter/views/components/add_review_form.dart';

class ProductDetailInfo extends StatelessWidget {
  Product _product;

  ProductDetailInfo(this._product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child:
                Image(image: AssetImage("assets/products/${_product.image}")),
            elevation: 0.5,
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(_product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))),
          Text('Rp. ${_product.price} ,-', style: TextStyle(fontSize: 16)),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Description:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              )),
          Text(_product.description),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Add Review:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              )),
          AddReviewForm(_product),
        ],
      ),
    );
  }
}
