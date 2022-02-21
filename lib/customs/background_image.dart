import 'package:flutter/material.dart';

class BackroundImage extends StatelessWidget {
  final String image;
  final Widget? child;
  final EdgeInsets padding;
  const BackroundImage(
      {Key? key,
      this.image = "assets/images/image_one.jpeg",
      this.child,
      this.padding = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: child,
      ),
    );
  }
}
