//import 'dart:html' as oi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/tumbal.dart';
import 'package:radargass/pages/scroll_Item.dart';
import 'package:radargass/pages/scroll_berita.dart';
import 'package:radargass/pages/scroll_profile.dart';
import 'package:radargass/widgets/HeaderItem.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {

            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(children: [
                Expanded(
                    child: SingleChildScrollView(child: ScrollProf())),
              ]),
            );

        }));
  }
}
