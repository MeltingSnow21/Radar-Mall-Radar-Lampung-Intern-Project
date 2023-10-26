import 'package:flutter/material.dart';
import 'package:radargass/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key,this.width, this.isResponsive=false }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Align(
        alignment: Alignment.centerLeft,
        child : Container(
        width: width,
         height:60,
        decoration: BoxDecoration( borderRadius : BorderRadius.circular(10),
        color: AppColors.mainColor),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("img/button-one.png")
        ],
      )
        )
    );
  }
}
