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
import 'package:radargass/pages/scroll_login.dart';
import 'package:radargass/pages/scroll_pasangiklan.dart';
import 'package:radargass/widgets/HeaderItem.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class PasangIklanPage extends StatefulWidget {
  const PasangIklanPage({Key? key}) : super(key: key);

  @override
  State<PasangIklanPage> createState() => _PasangIklanPageState();
}

class _PasangIklanPageState extends State<PasangIklanPage> with TickerProviderStateMixin {
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
                    child: SingleChildScrollView(child: Scrollpasangiklan())),

              ]),
            );

        }));
  }
}
