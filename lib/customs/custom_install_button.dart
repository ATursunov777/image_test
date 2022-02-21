import 'package:flutter/material.dart';

class CustomInstallButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  const CustomInstallButton(
      {Key? key, required this.icon, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: color ?? Colors.green),
          child: Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
