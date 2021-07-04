import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BrandCarousel extends StatelessWidget {
  final _images = ["brand1.webp", "brand2.webp", "brand3.webp", "brand4.webp"];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: _images.map<Widget>((img) {
          return Container(
            padding: EdgeInsets.only(right: 10),
            child: SizedBox(
              child: Image(
                image: AssetImage("assets/$img"),
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: true,
          initialPage: 0,
          height: 125,
        ));
  }
}
