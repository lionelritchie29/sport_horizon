import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/data/products.dart';
import 'package:sport_horizon_flutter/views/pages/product_detail.dart';

class ProductGrid extends StatelessWidget {
  late var _ctx;

  List<Widget> getChildren() {
    return products.map((product) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/products/${product.image}"),
            ),
            Container(
                child: Center(
                    child: Text(product.name, overflow: TextOverflow.ellipsis)),
                padding: EdgeInsets.only(left: 3, right: 3)),
            Text(product.price.toString()),
            TextButton(
              child: Text('View More'),
              onPressed: () {
                Navigator.push(
                    _ctx,
                    MaterialPageRoute(
                        builder: (_ctx) => ProductDetailPage(product)));
              },
            )
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    return Container(
      margin: EdgeInsets.all(5),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: getChildren(),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.45),
      ),
    );
  }
}
