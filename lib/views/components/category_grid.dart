import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/models/category.dart';

class CategoryGrid extends StatelessWidget {
  final _categories = [
    Category("Running", Colors.blue, "category4.jpg"),
    Category("Sneakers", Colors.pink, "category3.jpg"),
    Category("Golf", Colors.green, "category2.jpg"),
    Category("Kids", Colors.orange, "category1.jpg"),
  ];

  List<Widget> getChildren() {
    return _categories.map<Widget>((category) {
      return Card(
        shadowColor: category.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
                child: Image(image: AssetImage("assets/${category.image}"))),
            Container(
                padding: EdgeInsets.all(10),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      category.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    )))
          ],
        ),
        color: category.color,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisCount: 2,
      children: getChildren(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
    );
  }
}
