import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoCarousel extends StatelessWidget {
  final _images = [
    "banner1.webp",
    "banner2.webp",
    "banner3.jpeg",
    "banner4.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: _images.map<Widget>((img) {
          return Container(
            padding: EdgeInsets.only(right: 10),
            child: SizedBox(
              child: Card(
                child: Image(
                  image: AssetImage("assets/$img"),
                  fit: BoxFit.fitWidth,
                ),
                elevation: 2,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: true,
          initialPage: 0,
          height: 105,
        ));
  }
}
