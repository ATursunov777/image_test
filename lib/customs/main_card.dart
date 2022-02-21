import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_test/screens/wallpaper_page.dart';

class MainCard extends StatelessWidget {
  final String? image;
  MainCard({Key? key, this.image = "assets/images/image_one.jpeg"})
      : super(key: key);

  static double getRandom() {
    final double r = Random().nextInt(250) / 100;
    if (r < 1.2) {
      return getRandom();
    } else {
      return r;
    }
  }

  final double r = getRandom();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WallpaperPage(
                    image: image.toString(),
                  ))),
      child: AspectRatio(
        aspectRatio: 1 / r,
        child: Container(
          margin: const EdgeInsets.only(bottom: 22),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(image.toString()))),
        ),
      ),
    );
  }
}
