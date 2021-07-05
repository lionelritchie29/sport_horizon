import 'package:sport_horizon_flutter/data/products.dart';
import 'package:sport_horizon_flutter/models/product_review.dart';

void initReview() {
  product1.reviews = [
    ProductReview("BR", "Good shoes I like it"),
    ProductReview("TC", "Tara tara bum bum"),
    ProductReview("CC", "Cool shoes for walk"),
    ProductReview("GA", "Pretty much cool"),
    ProductReview("AE", "The shoes is imba"),
  ];

  product2.reviews = [
    ProductReview("CC", "Cool Shoes Bro"),
    ProductReview("VN", "Kewll"),
    ProductReview("JP", "Very like it"),
    ProductReview("GA", "What an imba shoes"),
    ProductReview("AE", "The shoes is imba"),
  ];

  product3.reviews = [
    ProductReview("DX", "Bro Cool Shoes yea"),
    ProductReview("ST", "Kewl Kewl Kewl"),
    ProductReview("vn", "Yuhuu"),
  ];

  product4.reviews = [
    ProductReview("QQ", "Bro Cool Shoes yea"),
    ProductReview("LL", "Hmm not good"),
  ];

  product5.reviews = [
    ProductReview("BR", "Very bad ugh"),
    ProductReview("LL", "Hmm veery badd"),
  ];

  product6.reviews = [
    ProductReview("CC", "Cool shoes hmm"),
    ProductReview("LL", "Hmm so stink bad hm ugh"),
  ];
}
