import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  const GradientBackground(
      {Key? key, this.child, this.padding = EdgeInsets.zero})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: padding,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff1e0024),
            Color(0xff4a1e58),
          ])),
      child: child,
    );
  }
}
