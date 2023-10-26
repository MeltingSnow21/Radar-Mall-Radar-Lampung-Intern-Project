import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';



class ScrollPilihPaket extends StatefulWidget {
  const ScrollPilihPaket({Key? key}) : super(key: key);

  @override
  State<ScrollPilihPaket> createState() => _ScrollPilihPaketState();
}

class _ScrollPilihPaketState extends State<ScrollPilihPaket> {



  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        color: AppColors.mainColor.withOpacity(0.1),
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 200),
        height: 1320,
        child: Stack(
          children: [

            //poto sampul

            //kontainer putih


            Positioned(
              top: 120,
              left: 20,


              child: Container(

                  width: 350,
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.mainColor.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child : Container (
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/batik1.jpg"),
                            fit: BoxFit.cover),

                      ),

                      child : Container(

                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),


                        ),

                        child: Column(
                          children: [
                            Row (
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [


                                SizedBox(width: 20,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        AppLargeText(text: "Free", color: AppColors.mainColor,),

                                        Container(
                                          height: 30,
                                          width: 30,
                                          child: Icon(
                                            Icons.verified,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                    AppText(text: "Classic Member", color: AppColors.mainColor.withOpacity(0.8),),


                                  ],

                                )

                              ],



                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "3 Kuota Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "30 Hari Iklan Gratis", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "1 Promosi Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "Dukungan Terbatas", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.only(left: 105),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: " Paket Telah Diambil", size: 13,color:Colors.white,),
                                    ],
                                  ),
                                ],
                              ),

                            ),

                          ],
                        ),



                      ))),



            ),
            Positioned(
              top: 520,
              left: 20,


              child: Container(

                  width: 350,
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.mainColor.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child : Container (
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/batik1.jpg"),
                            fit: BoxFit.cover),

                      ),

                      child : Container(

                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),


                        ),






                        child: Column(
                          children: [
                            Row (
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [


                                SizedBox(width: 20,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        AppLargeText(text: "Rp.300.000,-", color: AppColors.mainColor,),

                                        Container(
                                          height: 30,
                                          width: 30,
                                          child: Icon(
                                            Icons.verified,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                    AppText(text: "Personal Member", color: AppColors.mainColor.withOpacity(0.8),),


                                  ],

                                )

                              ],



                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "10 Kuota Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "6 Bulan Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "3 Promosi Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "Dukungan Penuh 24/7", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            GestureDetector(

                              onTap: () { BlocProvider.of<AppsCubits>(context).GoDaftarPaket();},

                              child: Container(
                                padding: EdgeInsets.only(left: 125),

                                height: 40,
                                width: 330,
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        AppLargeText(text: "Ambil Paket", size: 13,color:Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),

                          ],
                        ),



                      ))),



            ),
            Positioned(
              top: 920,
              left: 20,


              child: Container(

                  width: 350,
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.mainColor.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child : Container (
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("img/batik1.jpg"),
                            fit: BoxFit.cover),

                      ),

                      child : Container(

                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),


                        ),






                        child: Column(
                          children: [
                            Row (
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [


                                SizedBox(width: 20,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        AppLargeText(text: "Rp.500.000,-", color: AppColors.mainColor,),

                                        Container(
                                          height: 30,
                                          width: 30,
                                          child: Icon(
                                            Icons.verified,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                    AppText(text: "Business Member", color: AppColors.mainColor.withOpacity(0.8),),


                                  ],

                                )

                              ],



                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "30 Kuota Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "1 Tahun Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppLargeText(text: "5 Promosi Iklan", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),

                              height: 40,
                              width: 330,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      AppLargeText(text: "Dukungan Penuh 24/7", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 20,),
                            GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).GoDaftarPaket();},


                              child: Container(
                                padding: EdgeInsets.only(left: 125),

                                height: 40,
                                width: 330,
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        AppLargeText(text: "Ambil Paket", size: 13,color:Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),

                          ],
                        ),



                      ))),



            ),




          ],
        ),
      ),
    );
  }
}
