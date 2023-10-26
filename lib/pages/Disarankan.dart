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
import 'package:radargass/widgets/dropdonSerch.dart';
import 'package:radargass/widgets/dropdown.dart';
import 'circle.dart';

var image = {
  "Produk1.jpg": "Kopi Hitam Bang Rizky",
  "Produk2.jpg": "Es Teh Mba Indah",
  "Produk3.jpg": "Kulkas 2 Pintu Minat Inbox",
  "Produk4.jpg": "Andrie Elektronik"
};

var lokasi = ["Teluk Betung, Bandar Lampung", "Kota Agung, Tanggamus", "Pajar Isuk, Pringsewu", "Way Halom, Bandar Jaya"];
var Harga = ["Rp.100.000", "Rp.60.000", "Rp.1.340.000", "Rp.460.000"];

class DisarankanPage extends StatefulWidget {
  const DisarankanPage({Key? key}) : super(key: key);

  @override
  State<DisarankanPage> createState() => _DisarankanPageState();
}

class _DisarankanPageState extends State<DisarankanPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: BlocBuilder<AppsCubits, CubitStates>(builder: (context, state) {
          if (state is DisarankanState) {

            return Container(

                child:  Stack(


                  children:[
                    Positioned(

                      child: Row(
                          children : [

                            Positioned(
                              left: 20,
                              top: 50,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
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


                            Container(


                              margin: const EdgeInsets.only(
                                  top: 30, left: 20,right: 10),
                              height: 120,
                              width: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withAlpha(20),
                              ),
                              alignment: Alignment.topLeft,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start
                                ,
                                children: [
                                  SizedBox(height:35,),
                                  AppLargeText(text: "Disarankan Untukmu", color: AppColors.mainColor,size: 22)



                                ],





                              ),

                            ),

                          ]

                      ),
                    ),
                    //Positioned(child: dropdown()),



                    Container(
                      padding: const EdgeInsets.only(top: 120),
                      child: Stack(
                          children : [



                            GridView.builder(
                              itemCount: 4,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: (1 / 1.7),

                                  crossAxisCount: 2),
                              itemBuilder: (BuildContext context, int index) {

                                return Container(

                                  margin : const EdgeInsets.only(left: 10),
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10, bottom: 10),
                                    child: Container(
                                      width: 170,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12.withOpacity(0.05),
                                            spreadRadius: 0.01,
                                            blurRadius: 2,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(left: 10, top: 10),

                                              //margin: const EdgeInsets.only(right: 40),
                                              width: 150,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.white,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "img/" + image.keys.elementAt(index)),
                                                      fit: BoxFit.cover)),
                                            ),
                                            //SizedBox(height: 2,),

                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children : [

                                                  //tulisannya

                                                  Column (
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children : [
                                                        Container(
                                                          margin : const EdgeInsets.only(left: 20, top: 20),

                                                          child: AppLargeText(
                                                            text: image.values.elementAt(index),
                                                            color: AppColors.mainColor,
                                                            size: 12,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin : const EdgeInsets.only(left: 20, top: 8),

                                                          child: AppText(
                                                            text: lokasi.elementAt(index),
                                                            color: Colors.black38,
                                                            size: 10,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin : const EdgeInsets.only(left: 20, top: 5),

                                                          child: AppText(
                                                            text: Harga.elementAt(index),
                                                            color: AppColors.mainColor,
                                                            size: 10,
                                                          ),
                                                        )

                                                      ]),




                                                ])
                                          ]),
                                    ),
                                  ),

                                );

                              },
                            ),
                          ]
                      ),
                    )],
                ));




          } else {
            return Container();
          }
        }));
  }
}
