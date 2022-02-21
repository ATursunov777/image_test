import 'package:flutter/material.dart';
import 'package:image_test/customs/gradient_background.dart';
import 'package:image_test/customs/list_wallpapers.dart';
import 'package:image_test/customs/main_title.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        padding: const EdgeInsets.fromLTRB(28, 0, 20, 0),
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 44,
                  ),
                  const MainTitle(),
                  const SizedBox(
                    height: 22,
                  ),
                  const ListWallpaper()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
