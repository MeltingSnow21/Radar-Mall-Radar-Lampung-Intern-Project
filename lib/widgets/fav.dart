import 'package:flutter/material.dart';
import 'package:radargass/misc/colors.dart';

class favButton extends StatelessWidget {
  bool? isResponsive;
  double? width;


  favButton({Key? key,this.width, this.isResponsive=false }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Align(
        alignment: Alignment.centerLeft,
        child : Container(
            width: 30,
            height:30,
            decoration: BoxDecoration( borderRadius : BorderRadius.circular(10),
                color: Colors.white),
            child: Icon(Icons.map, size: 20, color: Colors.black54),

            )
        );
  }
}
