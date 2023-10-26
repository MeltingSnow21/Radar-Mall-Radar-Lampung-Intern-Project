//import 'dart:html' as oi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/ScrollDaftar.dart';
import 'package:radargass/pages/ScrollUbahProfile.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/tumbal.dart';
import 'package:radargass/pages/scroll_Item.dart';
import 'package:radargass/pages/scroll_berita.dart';
import 'package:radargass/pages/scroll_login.dart';
import 'package:radargass/widgets/HeaderItem.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({Key? key}) : super(key: key);

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
          if (state is DaftarState) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(children: [
                Expanded(
                    child: SingleChildScrollView(child: ScrollDaftar())),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor.withAlpha(170),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<AppsCubits>(context).GoLogin();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
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
