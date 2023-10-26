import 'package:flutter/material.dart';
import 'package:radargass/pages/scroll_Item.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  GridView.builder(
        itemCount: 5,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {

          return Padding(

              padding: const EdgeInsets.all(0.8),
            child: Container(
              height: 20,
              width: 20,
              color: Colors.black45,

            ),

          );

      },
    ),






    );
  }
}
