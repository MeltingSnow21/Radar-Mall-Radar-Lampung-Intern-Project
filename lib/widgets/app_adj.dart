import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText({Key? key,
    required this.text,
    this.size = 16,
    this.color = Colors.black54
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child : Text (
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
