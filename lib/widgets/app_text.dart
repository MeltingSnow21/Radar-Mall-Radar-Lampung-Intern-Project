import 'package:flutter/material.dart';

class AppAdj extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppAdj({Key? key,
    required this.text,
    this.size = 16,
    this.color = Colors.black54
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(


      child : Text (

        text,
      style: TextStyle(
          color: color,
          fontSize: size,

      ),
    ),
    );
  }
}
