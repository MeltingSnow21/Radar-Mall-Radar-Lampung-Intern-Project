import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/responsive_button.dart';

class ScrollIterm extends StatefulWidget {
  const ScrollIterm({Key? key}) : super(key: key);

  @override
  State<ScrollIterm> createState() => _ScrollItermState();
}

class _ScrollItermState extends State<ScrollIterm> {
  var a = "Mba Indah Radar";
  double selectedValue = 0;
  double selectedValue2 = 0;
  double selectedValue3 = 0;
  double selectedValue4 = 0;
  double selectedValue5 = 0;
  double xx = 0;

  @override
  Widget build(BuildContext context) {
    xx = (selectedValue +
            selectedValue2 +
            selectedValue3 +
            selectedValue4 +
            selectedValue5) /
        5;
    return Container(
      child: Container(
        width: double.maxFinite,
        height: 2700,
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
                        image: AssetImage("img/Produk2.jpg"),
                        fit: BoxFit.cover)),
              ),
            ), //foto kucing
            Positioned(
              top: 200,
              child: Container(
                height: 4000,
                width: MediaQuery.of(context).size.width,
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
                top: 220,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(
                      text: "Es Teh Mba Indah",
                      color: AppColors.mainColor,
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppLargeText(
                      text: "Restorant dan Cafe",
                      color: AppColors.mainColor.withOpacity(0.7),
                      size: 15,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          child: IconButton(
                            onPressed: () {
                              BlocProvider.of<AppsCubits>(context).Gohome();
                            },
                            icon: Icon(
                              Icons.pin_drop,
                              size: 25,
                            ),
                            color: AppColors.mainColor,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 310,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(),
                          child: AppText(
                            text:
                                "Jl.Labuhan Ratu, Gg.Harapan 1, Labuhan Ratu, Bandar lampung",
                            color: Colors.black45,
                            size: 13,
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
              right: 10,
              top: 210,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          spreadRadius: 0.01,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                    ),
                    child: AppLargeText( text : "Rp.30.000", size: 14, color : Colors.white
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 350),
                  width: double.maxFinite,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: AppLargeText(
                              text: "Detail Informasi",
                              color: AppColors.mainColor.withOpacity(0.7),
                              size: 15,
                            )),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, right: 10),
                            child: AppText(
                              text:
                                  "Es Teh Mba Indah merupakan esteh terbaik di Radar Lampung, harganya yang sangat bersahabat membuat esteh ini diminati oleh setiap orang",
                              color: Colors.black38,
                              size: 12,
                            )),
                      ])),
            ),

            Positioned(
              right: 0,
              top: 160,
              child: Row(
                children: [
                  Container(
                    width: 210,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black26.withAlpha(40),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(left: 10, top: 7),
                        child: AppLargeText(
                          text: "oleh : " + a,
                          color: Colors.white,
                          size: 15,
                        )),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 490),
                  width: double.maxFinite,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: AppLargeText(
                              text: "Alamat Lengkap",
                              color: AppColors.mainColor.withOpacity(0.7),
                              size: 15,
                            )),
                        Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, right: 10),
                            child: AppText(
                              text:
                                  "Jl. labuhan Ratu, Gg. Harapan Dua, No. 45, Rt/Rw 003/002, Kec.Labuhan Ratu, Bandar Lampung",
                              color: Colors.black38,
                              size: 12,
                            )),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, top: 20, right: 10),
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.1),
                                  spreadRadius: 0.01,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("img/map.png"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, top: 20, right: 10),
                          height: 30,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.mainColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.1),
                                  spreadRadius: 0.01,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppLargeText(
                                text: "Telusuri map",
                                size: 13,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ])),
            ),
            Positioned(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 960),
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: AppLargeText(
                              text: "Jam Operasi",
                              color: AppColors.mainColor,
                              size: 15,
                            )),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, top: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Senin",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Selasa",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Rabu",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Kamis",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Jum'at",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Sabtu",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black26, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 290,
                                      margin: const EdgeInsets.only(
                                          right: 10, left: 10, bottom: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppText(
                                              text: "Minggu",
                                              size: 13,
                                              color: AppColors.mainColor,
                                            ),
                                            AppText(
                                              text: "Buka Setiap Hari",
                                              size: 13,
                                              color: Colors.black54,
                                            ),
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ])),
            ),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 1330),
              width: double.maxFinite,
              height: 1320,
              decoration: BoxDecoration(
                color: Colors.black38.withOpacity(0.03),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      child: AppLargeText(
                        text: "Tambah Penilaian",
                        color: AppColors.mainColor,
                        size: 15,
                      )),
                  Container(
                      width: double.maxFinite,
                      height: 450,
                      margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 25, left: 20),
                                  child: AppLargeText(
                                    text: "Penilaian",
                                    color: AppColors.mainColor,
                                    size: 12,
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 240,
                                    child: CupertinoSlider(
                                      value: selectedValue,
                                      min: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (value) {
                                        selectedValue = value;
                                        setState(() {});
                                      },
                                      activeColor: AppColors.mainColor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.mainColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 10, top: 6),
                                        child: AppLargeText(
                                          text: "$selectedValue",
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                  ),
                                ]),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: AppLargeText(
                                    text: "Menu",
                                    color: AppColors.mainColor,
                                    size: 12,
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 240,
                                    child: CupertinoSlider(
                                      value: selectedValue2,
                                      min: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (value) {
                                        selectedValue2 = value;
                                        setState(() {});
                                      },
                                      activeColor: AppColors.mainColor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.mainColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 10, top: 6),
                                        child: AppLargeText(
                                          text: "$selectedValue2",
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                  ),
                                ]),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: AppLargeText(
                                    text: "Harga",
                                    color: AppColors.mainColor,
                                    size: 12,
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 240,
                                    child: CupertinoSlider(
                                      value: selectedValue3,
                                      min: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (value) {
                                        selectedValue3 = value;
                                        setState(() {});
                                      },
                                      activeColor: AppColors.mainColor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.mainColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 10, top: 6),
                                        child: AppLargeText(
                                          text: "$selectedValue3",
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                  ),
                                ]),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: AppLargeText(
                                    text: "Pelayanan",
                                    color: AppColors.mainColor,
                                    size: 12,
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 240,
                                    child: CupertinoSlider(
                                      value: selectedValue4,
                                      min: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (value) {
                                        selectedValue4 = value;
                                        setState(() {});
                                      },
                                      activeColor: AppColors.mainColor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.mainColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 10, top: 6),
                                        child: AppLargeText(
                                          text: "$selectedValue4",
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                  ),
                                ]),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: AppLargeText(
                                    text: "Staf",
                                    color: AppColors.mainColor,
                                    size: 12,
                                  ),
                                ),
                                Row(children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 240,
                                    child: CupertinoSlider(
                                      value: selectedValue5,
                                      min: 0,
                                      max: 5,
                                      divisions: 5,
                                      onChanged: (value) {
                                        selectedValue5 = value;
                                        setState(() {});
                                      },
                                      activeColor: AppColors.mainColor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color:
                                          AppColors.mainColor.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 10, top: 6),
                                        child: AppLargeText(
                                          text: "$selectedValue5",
                                          color: Colors.white,
                                          size: 15,
                                        )),
                                  ),
                                ]),
                              ]),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 150,
                            margin: const EdgeInsets.only(left: 180, top: 30),
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(40)),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppLargeText(
                                      text: "$xx",
                                      size: 18,
                                      color: Colors.white),
                                  AppLargeText(
                                    text: "Nilai",
                                    size: 17,
                                    color: Colors.white,
                                  )
                                ]),
                          )
                        ],
                      )),
                  Container(
                      width: double.maxFinite,
                      height: 380,
                      margin: const EdgeInsets.only(
                          top: 20, left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 0, top: 20),
                              child: AppLargeText(
                                text: "Tambahkan deskripsi",
                                color: AppColors.mainColor,
                                size: 15,
                              )),
                          Container(
                            color: Colors.white,
                            height: 120,
                            margin: const EdgeInsets.only(
                                right: 10, left: 10, top: 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: '    Tulis penilaian anda',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 40),
                              ),

                              maxLines: 10, // <-- SEE HERE
                              minLines: 1,
                            ),
                          ),
                          Container(
                            height: 30,
                            margin: const EdgeInsets.only(left: 30, right: 30),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.mainColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.1),
                                        spreadRadius: 0.01,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.image,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    AppLargeText(
                                      text: "Tautkan gambar",
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black54.withAlpha(20),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            margin: const EdgeInsets.only(left: 210, top: 20),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.mainColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12.withOpacity(0.1),
                                        spreadRadius: 0.01,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.send,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    AppLargeText(
                                      text: "Kirim",
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: double.maxFinite,
                      height: 380,
                      margin: const EdgeInsets.only(
                          top: 20, left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 0, top: 20),
                              child: AppLargeText(
                                text: "Ulasan Item",
                                color: AppColors.mainColor,
                                size: 15,
                              )),
                          Container(
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
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Randi",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                              "Ini merupakan Es Teh terbaik yang pernah saya minum",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),




                          Container(
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
                                          image: AssetImage("img/catie2.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Desi",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                          "Esteh mba indah sangat sehat dan menyegarkan",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),


                          Container(
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
                                          image: AssetImage("img/catie3.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Sherin",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                          "Luar biasa, satu kali minum saya bisa habis 12 gelas",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),







                        ],
                      )),
                ]),
              ]),
            )),

            Positioned(
              top : 2320,
              left: 270,
              child: RatingBar.builder(
                itemSize: 11,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            Positioned(
              top : 2410,
              left: 270,
              child: RatingBar.builder(
                itemSize: 11,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            Positioned(
              top : 2500,
              left: 270,
              child: RatingBar.builder(
                itemSize: 11,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),





          ],
        ),
      ),
    );
  }
}
