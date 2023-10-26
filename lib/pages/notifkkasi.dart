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



class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
          if (state is NotifState) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(children: [


                Expanded(
                    child: SingleChildScrollView(child: Container(
                      alignment: Alignment.topRight,
                      height: 800,
                      width: double.maxFinite,
                      color: Colors.white,


                      child: Stack(

                        children : [
                        Positioned(

                          child: Column(
                        children: [

                          SizedBox(height: 150,),


                              GestureDetector(

                                onTap: (){
                                  BlocProvider.of<AppsCubits>(context).DetailPage();
                                },

                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54.withAlpha(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [

                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage("img/catie1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            AppLargeText(
                                                text: "Foreign",
                                                color: AppColors.mainColor.withAlpha(190),
                                                size: 15),
                                            Container(
                                              width: 200,
                                              height: 30,
                                              margin: const EdgeInsets.only(top: 10),
                                              child: AppLargeText(
                                                text:
                                                "Menambahkan ulasan pada produk anda",
                                                size: 11,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )),
                              ),

                              GestureDetector(

                                onTap: (){
                                  BlocProvider.of<AppsCubits>(context).DetailPage();
                                },

                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54.withAlpha(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [




                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage("img/catie1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            AppLargeText(
                                                text: "Foreign",
                                                color: AppColors.mainColor.withAlpha(190),
                                                size: 15),
                                            Container(
                                              width: 200,
                                              height: 30,
                                              margin: const EdgeInsets.only(top: 10),
                                              child: AppLargeText(
                                                text:
                                                "Menambahkan porduk anda ke favorit",
                                                size: 11,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )),
                              ),

                              GestureDetector(

                                onTap: (){
                                  BlocProvider.of<AppsCubits>(context).DetailPage();
                                },

                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54.withAlpha(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [




                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage("img/catie1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            AppLargeText(
                                                text: "Foreign",
                                                color: AppColors.mainColor.withAlpha(190),
                                                size: 15),
                                            Container(
                                              width: 200,
                                              height: 30,
                                              margin: const EdgeInsets.only(top: 10),
                                              child: AppLargeText(
                                                text:
                                                "Menambahkan ulasan pada produk anda",
                                                size: 11,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )),
                              ),

                              GestureDetector(

                                onTap: (){
                                  BlocProvider.of<AppsCubits>(context).DetailPage();
                                },

                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54.withAlpha(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [




                                        Container(
                                          margin: const EdgeInsets.only(left: 10),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage("img/catie1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            AppLargeText(
                                                text: "Foreign",
                                                color: AppColors.mainColor.withAlpha(190),
                                                size: 15),
                                            Container(
                                              width: 200,
                                              height: 30,
                                              margin: const EdgeInsets.only(top: 10),
                                              child: AppLargeText(
                                                text:
                                                "Menambahkan porduk anda ke favorit",
                                                size: 11,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )),
                              ),


                            ],
                          ),
                        ),
                          

                       ],




                      ),





                    ))),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),

                    height: 100,
                    width: double.maxFinite,

                    child: Row(
                      children: [

                        SizedBox(width: 20,),

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
                        ),
                        Container(


                          margin: const EdgeInsets.only(
                              left: 20,right: 10),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.topLeft,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              AppLargeText(text: "Notifikasi", color: AppColors.mainColor,size: 22)



                            ],





                          ),

                        ),





                      ],







                    ),


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
