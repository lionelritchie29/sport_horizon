import 'package:sport_horizon_flutter/models/product_review.dart';

class Product {
  int id;
  String name;
  int price;
  String image;
  String description;
  late List<ProductReview> reviews;

  Product(this.id, this.name, this.price, this.image, this.description) {
    this.reviews = [];
  }
}
