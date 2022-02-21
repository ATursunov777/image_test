import 'package:flutter/material.dart';
import 'package:image_test/customs/main_card.dart';

class ListWallpaper extends StatefulWidget {
  const ListWallpaper({Key? key}) : super(key: key);

  @override
  State<ListWallpaper> createState() => _ListWallpaperState();
}

class _ListWallpaperState extends State<ListWallpaper> {
  List<Widget> columOne = [], columTwo = [];

  final int aWallpapers = 8;

  void popLists() {
    for (int i = 1; i <= aWallpapers; i++) {
      if (i.isOdd) {
        columOne.add(MainCard(
          image: "assets/images/images_${i.toString()}.jpeg",
        ));
      } else {
        columTwo
            .add(MainCard(image: "assets/images/images_${i.toString()}.jpeg"));
      }
    }
  }

  @override
  void initState() {
    popLists();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: columOne,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: columTwo,
          ),
        ),
        Container()
      ],
    );
  }
}
