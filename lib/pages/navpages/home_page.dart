//import 'dart:html' as oi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/tumbal.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'circle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
          if (state is LoadedState) {
            return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              Container(

                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

                child : Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children : [




                      //tulisan
                      Container(

                          margin: const EdgeInsets.only(left: 0, right: 22, top : 0),

                          child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [


                                SizedBox(height: 30),


                                AppLargeText(
                                  text: "Radar Mall",
                                  size: 22,
                                  color: AppColors.mainColor,
                                ),
                                AppText(text: "Radar Lampung Marketplace", color : Colors.black38, size: 12,),
                                SizedBox(height: 3),




                              ])),

                      Row(
                        children : [

                          GestureDetector(
                            onTap: (){
                              BlocProvider.of<AppsCubits>(context).GoBook();
                            },
                            child : Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    spreadRadius: 0.01,
                                    blurRadius: 2,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],


                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.bookmark, size: 25, color: Colors.black54),
                          ),),

                          SizedBox(width: 10,),

                          Stack(
                            children: [



                              GestureDetector(
                                  onTap: (){
                                    BlocProvider.of<AppsCubits>(context).GoNotif();
                                  },
                                  child :

                                  Container(

                                      width: 40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.white,

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12.withOpacity(0.1),
                                              spreadRadius: 0.01,
                                              blurRadius: 2,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],




                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(Icons.notifications, size: 25, color: Colors.black54)
                                  ),


                              ),








                              Positioned(
                                  left: 30,
                                  top: 10,
                                  child: dotnotif())
                            ],
                          ),
                        ],
                      )

                    ]
                ),

              ),
              SizedBox(height: 10,)    ,
              Expanded(child: SingleChildScrollView(
                child:    DetailPage()          ,

              )) ,
            ]) ;

          } else {
            return Container();
          }
        }));
  }
}
