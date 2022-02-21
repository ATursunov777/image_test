import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:image_test/customs/background_image.dart';
import 'package:image_test/customs/custom_back_button.dart';
import 'package:image_test/customs/custom_install_button.dart';

class WallpaperPage extends StatefulWidget {
  final String image;

  const WallpaperPage({Key? key, this.image = "assets/images/image_one.jpeg"})
      : super(key: key);

  @override
  State<WallpaperPage> createState() => _WallpaperPageState();
}

class _WallpaperPageState extends State<WallpaperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackroundImage(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        image: widget.image,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomBackButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: CustomInstallButton(
                    icon: Icons.check,
                    text: "install",
                    color: Colors.green[400],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
