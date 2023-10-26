import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/navpages/circle.dart';
import 'package:radargass/widgets/addedFav.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/app_text.dart';
import 'package:radargass/widgets/dot_notif.dart';
import 'package:radargass/widgets/fav.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool click = true;
  Color _iconColor = Colors.white;


  var berita = {
    "Berita4.jpg": "5 Duelist Agent Terbaik Valorant Yang Bisa Kamu Mainkan Saat Ini",
    "Berita3.jpg": "Rekomendasi Laptop Pelajar Untuk Sambut Tahun Ajaran Baru",
    "Berita2.jpg": "Begini Maksud Tersembunyi dari tingkah lucu 'Anabul' kesayanganmu",
    "Berita1.jpg": "Rekomendasi tempat ngopi terbaik di Bandar Lampung",
  };

  var Judul = [
    "5 Duelist Agent Terbaik Valorant Yang Bisa Kamu Mainkan Saat Ini",
    "Rekomendasi Laptop Pelajar Untuk Sambut Tahun Ajaran Baru",
    "Begini Maksud Tersembunyi dari tingkah lucu 'Anabul' kesayanganmu"

  ];


  var image = {
    "Produk1.jpg": "Kopi Hitam Bang Rizky",
    "Produk2.jpg": "Es Teh Mba Indah",
    "Produk3.jpg": "Kulkas 2 Pintu Minat Inbox",
    "Produk4.jpg": "Andrie Elektronik"
  };

  var lokasi = ["Teluk Betung, Bandar Lampung", "Kota Agung, Tanggamus", "Pajar Isuk, Pringsewu", "Way Halom, Bandar Jaya"];
  var Harga = ["Rp.50.000", "Rp.20.000", "Rp.9.340.000", "Rp.400.000"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //banner bar



        Container(
          alignment: Alignment.centerLeft,
          height: 220,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  BlocProvider.of<AppsCubits>(context).GoBerita();
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Container(
                    width: 320,
                    height: 120,
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
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "img/" + berita.keys.elementAt(index)),
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
                                        width: 300
                                        ,margin : const EdgeInsets.only(left: 20, top: 10),

                                        child: AppLargeText(
                                          text: berita.values.elementAt(index),
                                          color: AppColors.mainColor,
                                          size: 12,
                                        ),
                                      ),



                                    ]),




                              ])
                        ]),
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(
          height: 10,
        ),



        //search bar
        Container(
            height: 40,
            padding: EdgeInsets.only(left: 20, right: 20),
            child:
            CupertinoSearchTextField(
              style: TextStyle(fontSize: 14.0, height:1.2, color: Colors.black),
              placeholder : 'Temukan kebutuhanmu',


              decoration: BoxDecoration(

                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 0.01,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
            )),

        //disarakan bar
        SizedBox(
          height: 10,
        ),

        Container(
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black54,
            image: DecorationImage(
                image: AssetImage("img/banner1.png"),
                fit: BoxFit.cover),
          ),
        ),


        SizedBox(
          height: 10,
        ),



        //Populer bar
        Container(
          margin: const EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //tulisan

              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                AppLargeText(
                  text: "Berita Terkini",
                  size: 17,
                  color: AppColors.mainColor,
                ),
                SizedBox(height: 3),
                AppText(
                  text: "Baca berita terkini yang sedang hangat",
                  color: Colors.black38,
                  size: 12,
                ),
              ]),


              GestureDetector(

                onTap: () {
                  BlocProvider.of<AppsCubits>(context).GoBeritaTerkini();
                },

                child : Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,

                      borderRadius: BorderRadius.circular(20)),
                  child: AppLargeText(
                    text: "See All",
                    size: 13,
                    color: Colors.white,
                  ),
                ),),

            ],
          ),
        ),

        //popular scroll
        SizedBox(
          height: 20,
        ),

        Container(
          alignment: Alignment.centerLeft,
          height: 300,
          padding: EdgeInsets.only(left: 20),

          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  BlocProvider.of<AppsCubits>(context).GoBerita();
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Container(
                    width: 150,
                    height: 100,
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
                          Row(
                            children: [

                              Container(
                                margin: const EdgeInsets.only(left: 10, top: 10),

                                //margin: const EdgeInsets.only(right: 40),
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "img/" + berita.keys.elementAt(index)),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height : 70,
                                    width: 220,
                                    margin : const EdgeInsets.only(left: 10),

                                    child: AppLargeText(
                                      text: berita.values.elementAt(index),
                                      color: AppColors.mainColor,
                                      size: 15,
                                    ),
                                  ),

                                ],
                              )                              ],
                          ),


                          //SizedBox(height: 2,),

                        ]),
                  ),
                ),
              );
            },
          ),
        ),



     Container(
            margin: const EdgeInsets.only(left: 20, top: 25, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //tulisan

                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  AppLargeText(
                    text: "Disarankan Untukmu",
                    size: 17,
                    color: AppColors.mainColor,
                  ),
                  SizedBox(height: 3),
                  AppText(
                    text: "Hal-hal yang mungkin kamu sukai",
                    color: Colors.black38,
                    size: 12,
                  ),
                ]),

                GestureDetector(

                  onTap: () {
                    BlocProvider.of<AppsCubits>(context).GoDisarankan();
                  },

                child : Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,

                      borderRadius: BorderRadius.circular(20)),
                  child: AppLargeText(
                    text: "See All",
                    size: 13,
                    color: Colors.white,
                  ),
                ),),
              ],
            ),
          ),


        // scroll disarankan
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 320,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
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
        ),
        SizedBox(
          height: 10,
        ),



        //Populer bar
        Container(
          margin: const EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //tulisan

              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                AppLargeText(
                  text: "Populer",
                  size: 17,
                  color: AppColors.mainColor,
                ),
                SizedBox(height: 3),
                AppText(
                  text: "Beberapa hal yang tengah diminati",
                  color: Colors.black38,
                  size: 12,
                ),
              ]),


              GestureDetector(

                onTap: () {
                  BlocProvider.of<AppsCubits>(context).Gopupuler();
                },

                child : Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,

                      borderRadius: BorderRadius.circular(20)),
                  child: AppLargeText(
                    text: "See All",
                    size: 13,
                    color: Colors.white,
                  ),
                ),),

            ],
          ),
        ),

        //popular scroll
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 320,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
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
        ),
        SizedBox(
          height: 10,
        ),

        Container(
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black54,
            image: DecorationImage(
                image: AssetImage("img/banner2.png"),
                fit: BoxFit.cover),
          ),
        ),
        //Disekitar bar


        Container(
          margin: const EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //tulisan

              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                AppLargeText(
                  text: "Disekitarmu",
                  size: 17,
                  color: AppColors.mainColor,
                ),
                SizedBox(height: 3),
                AppText(
                  text: "Cari tahu hal menarik disekitarmu",
                  color: Colors.black38,
                  size: 12,
                ),
              ]),


              GestureDetector(

                onTap: () {
                  BlocProvider.of<AppsCubits>(context).GoDisekitarmu();
                },

                child : Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,

                      borderRadius: BorderRadius.circular(20)),
                  child: AppLargeText(
                    text: "See All",
                    size: 13,
                    color: Colors.white,
                  ),
                ),),

            ],
          ),
        ),

        // scroll disarankan
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 320,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
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
        ),
        SizedBox(height: 20,),
        Container(
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.black54,
            image: DecorationImage(
                image: AssetImage("img/bannerC.png"),
                fit: BoxFit.cover),
          ),
        ),

      ]),
    );
  }
}
