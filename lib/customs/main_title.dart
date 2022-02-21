import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Image test",
          style: TextStyle(fontSize: 38, color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "8 доступных обоев",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
