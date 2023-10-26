//import 'dart:html' as oi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/ScrollUbahProfile.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/tumbal.dart';
import 'package:radargass/pages/scroll_Item.dart';
import 'package:radargass/pages/scroll_berita.dart';
import 'package:radargass/widgets/HeaderItem.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class UbahProfilePage extends StatefulWidget {
  const UbahProfilePage({Key? key}) : super(key: key);

  @override
  State<UbahProfilePage> createState() => _UbahProfilePageState();
}

class _UbahProfilePageState extends State<UbahProfilePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
          if (state is UbahProfileState) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(children: [
                Expanded(
                    child: SingleChildScrollView(child: ScrollUbahprofile())),
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

              ]),
            );
          } else {
            return Container();
          }
        }));
  }
}
