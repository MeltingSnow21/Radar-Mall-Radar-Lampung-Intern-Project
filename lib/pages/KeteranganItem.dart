//import 'dart:html' as oi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/tumbal.dart';
import 'package:radargass/pages/scroll_Item.dart';
import 'package:radargass/widgets/HeaderItem.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class OpenItem extends StatefulWidget {
  const OpenItem({Key? key}) : super(key: key);

  @override
  State<OpenItem> createState() => _OpenItemState();
}

class _OpenItemState extends State<OpenItem> with TickerProviderStateMixin {

  Color _colorContainer = Colors.white;
  Color _colorContainerBack = AppColors.mainColor.withAlpha(170);

  @override

  Widget build(BuildContext context) {

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
      if (state is DetailState) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(children: [
            Expanded(
              child: SingleChildScrollView(child: ScrollIterm())),
            Positioned(
              left: 10,
              top: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor.withAlpha(170),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<AppsCubits>(context).Gohome();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: _colorContainerBack,
                      borderRadius: BorderRadius.circular(25),
                    ),




                    child: IconButton(
                      onPressed: () {
                        setState(() {
                        _colorContainer = _colorContainer == Colors.redAccent?
                        Colors.white :
                        Colors.redAccent;
                        });

                        setState(() {
                          _colorContainerBack = _colorContainerBack == Colors.white?
                          AppColors.mainColor :
                          Colors.white;
                        });






                      },
                      icon: Icon(
                        Icons.favorite,
                        size: 25,
                        color: _colorContainer ,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 120,
              bottom: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<AppsCubits>(context).Gohome();
                      },
                      icon: Icon(
                        Icons.email,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              right: 70,
              bottom: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<AppsCubits>(context).Gohome();
                      },
                      icon: Icon(
                        Icons.call,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 30,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<AppsCubits>(context).Gohome();
                      },
                      icon: Icon(
                        Icons.whatsapp_rounded,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )



          ]),
        );
      } else {
        return Container();
      }
    }));
  }
}
