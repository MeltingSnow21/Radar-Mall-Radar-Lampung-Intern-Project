import 'package:flutter/material.dart';

class dotnotif extends StatelessWidget {
  const dotnotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      alignment: Alignment.center,
      decoration: BoxDecoration(
            color: Colors.redAccent,
        borderRadius: BorderRadius.circular(5)
          
    ),

    );
  }
}
