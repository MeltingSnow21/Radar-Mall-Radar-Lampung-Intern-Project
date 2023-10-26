import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/ubahprofile.dart';
import 'package:radargass/pages/ubahprofile.dart';
import 'package:radargass/pages/ubahprofile.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/chart.dart';
import 'package:radargass/widgets/responsive_button.dart';

import 'ubahprofile.dart';

class ScrollProf extends StatefulWidget {
  const ScrollProf({Key? key}) : super(key: key);

  @override
  State<ScrollProf> createState() => _ScrollProfState();
}

class _ScrollProfState extends State<ScrollProf> {

  var image = {
    "Produk1.jpg": "Kopi Hitam Bang Rizky",
    "Produk2.jpg": "Es Teh Mba Indah",
    "Produk3.jpg": "Kulkas 2 Pintu Minat Inbox",
    "Produk4.jpg": "Andrie Elektronik"
  };

  var image2 = {
    "Produk3.jpg": "Kulkas 2 Pintu Minat Inbox",
    "Produk4.jpg": "Andrie Elektronik"
  };


  var lokasi = [
    "Teluk Betung, Bandar Lampung",
    "Kota Agung, Tanggamus",
    "Pajar Isuk, Pringsewu",
    "Way Halom, Bandar Jaya"
  ];
  var Harga = ["Rp.100.000", "Rp.60.000", "Rp.1.340.000", "Rp.460.000"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.maxFinite,
        height: 1420,
        child: Stack(
          children: [
          Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/catie4.jpg"),
                    fit: BoxFit.cover)),
          ),
        ), //foto kucing
        Positioned(
          top: 200,
          child: Container(
            height: 4000,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(0, -20), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
          ),
        ), //kontainer putih
        Positioned(
            top: 260,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 2,
                            color: AppColors.mainColor.withOpacity(0.5)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.add_business,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              AppText(
                                text: "Iklan Aktif",
                                size: 12,
                              ),
                              AppText(text: "4")
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 2,
                            color: AppColors.mainColor.withOpacity(0.5)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              AppText(
                                text: "Dilihat",
                                size: 12,
                              ),
                              AppText(text: "1082")
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 2,
                            color: AppColors.mainColor.withOpacity(0.5)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              AppText(
                                text: "Total Penilaian",
                                size: 12,
                              ),
                              AppText(text: "812")
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
        Positioned(
            top: 210,
            left: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 10, right: 20),
                  child: AppLargeText(
                    text: "Alam Islam",
                    color: AppColors.mainColor,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      BlocProvider.of<AppsCubits>(context).GoUbahProfile();
                    },
                    child: Container(
                      padding:
                      EdgeInsets.only(bottom: 10, left: 70, top: 8),
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 0.01,
                            blurRadius: 2,
                            offset:
                            Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: AppLargeText(
                        text: "Ubah Profil",
                        size: 12,
                        color: Colors.white,
                      ),
                    ))
              ],
            )),

        Positioned(
          top: 370,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: AppLargeText(
                    text: "Iklan Dilihat",
                    color: Colors.black54,
                    size: 17,
                  )),
              Container(
                padding: EdgeInsets.only(right: 50, top: 20, left: 5),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.1),
                      spreadRadius: 0.01,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: AppColors.mainColor.withAlpha(30),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.only(left: 20, top: 10),
                child: FiChartPage(),
              ),
            ],
          ),
        ),

        Positioned(
          top: 690,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: AppLargeText(
                    text: "Iklan Aktif",
                    color: Colors.black54,
                    size: 17,
                  )),
            ],
          ),
        ),

        Positioned(
          top: 20,
          right: 20,


          child: GestureDetector(
              onTap: () {
                BlocProvider.of<AppsCubits>(context).DetailPage();
              },

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
                    Icons.logout_outlined,
                    size: 25,
                  ),
                  color: Colors.white,
                ),
              ))),


              Positioned(
                top: 130,
                left: 30,
                child: Container(
                  height: 140,
                  width: 140,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: AssetImage("img/catie3.jpg"),
                            fit: BoxFit.cover),
                      )),
                ),
              ),

              Positioned(
                top: 750,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 320,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocProvider.of<AppsCubits>(context).DetailPage();
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20, bottom: 10),
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
                                  offset:
                                  Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                    const EdgeInsets.only(left: 10, top: 10),

                                    //margin: const EdgeInsets.only(right: 40),
                                    width: 150,
                                    height: 220,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage("img/" +
                                                image2.keys.elementAt(index)),
                                            fit: BoxFit.cover)),
                                  ),
                                  //SizedBox(height: 2,),

                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        //tulisannya

                                        Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 20),
                                                child: AppLargeText(
                                                  text: image2.values
                                                      .elementAt(index),
                                                  color: AppColors.mainColor,
                                                  size: 12,
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 8),
                                                child: AppText(
                                                  text: lokasi.elementAt(index),
                                                  color: Colors.black38,
                                                  size: 10,
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 5),
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
                ),
              ),
              Positioned(
                top: 1080,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 320,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 15),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocProvider.of<AppsCubits>(context).DetailPage();
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20, bottom: 10),
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
                                  offset:
                                  Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                    const EdgeInsets.only(left: 10, top: 10),

                                    //margin: const EdgeInsets.only(right: 40),
                                    width: 150,
                                    height: 220,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage("img/" +
                                                image.keys.elementAt(index)),
                                            fit: BoxFit.cover)),
                                  ),
                                  //SizedBox(height: 2,),

                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        //tulisannya

                                        Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 20),
                                                child: AppLargeText(
                                                  text: image.values
                                                      .elementAt(index),
                                                  color: AppColors.mainColor,
                                                  size: 12,
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 8),
                                                child: AppText(
                                                  text: lokasi.elementAt(index),
                                                  color: Colors.black38,
                                                  size: 10,
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20, top: 5),
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
                ),
              )
          ],
        ),
      ),
    );
  }
}
