import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  List text = [
    "mari berbelanja di sini ya gess",
    "Radar mall sudah terpercaya gess",
    "Nasi uduk tempe sambel enak juga",
  ];

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      // 5s over, navigate to a new page
      BlocProvider.of<AppsCubits>(context).Gohome();
    });

    return Container(
      height: double.maxFinite,
      width: 400,
      decoration: BoxDecoration(
        color: AppColors.mainColor.withOpacity(0.9),
      ),
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: 280,
          child: Column(
            children: [
              Container(
                  width: 120,
                  height: 120,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.1),
                        spreadRadius: 0.01,
                        blurRadius: 50,
                        offset: Offset(0, 20), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage('img/keranjang.png'),
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                child: AppLargeText(
                  text: 'RADARMALL.CO.ID',
                  size: 18,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
