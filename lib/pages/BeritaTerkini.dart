import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/gridItemScroll.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/dropdonSerch.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../../cubit/app_cubit.dart';
import '../../widgets/app_large_text.dart';
import '../../widgets/dropdownBerita.dart';



var image = {
  "Berita4.jpg": "5 Duelist Agent Terbaik Valorant Yang Bisa Kamu Mainkan Saat Ini",
  "Berita3.jpg": "Rekomendasi Laptop Pelajar Untuk Sambut Tahun Ajaran Baru",
  "Berita2.jpg": "Begini Maksud Tersembunyi dari tingkah lucu 'Anabul' kesayanganmu",
  "catie1.jpg": "Tersangka Pencurian Wishkas di Perumahan Ujung Pandang",
  "catie2.jpg": "Seorang Mahasiswa nekat membeli kucing yang sangat kawaii",
  "catie3.jpg" : "Kenali Sidik, Kucing Pendiam yang Populer di Kalangan Pelajar",
  "catie4.jpg": "Berikut Cara Terbaik Untuk Mendiamkan Kucing yang Tengah Mengamuk",


};







class BeritaTerkini extends StatelessWidget {

  const BeritaTerkini({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Stack(


        children:[

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
                        AppLargeText(text: "Berita Terkini", color: AppColors.mainColor,size: 22)



                      ],





                    ),

                  ),





                ],







              ),


            ),
          ),

          //Positioned(child: dropdown()),



          Container(
            alignment: Alignment.centerLeft,
            height: double.maxFinite,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20, top: 120),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 7,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<AppsCubits>(context).GoBerita();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Container(
                      width: 170,
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
                                              "img/" + image.keys.elementAt(index)),
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
                                        text: image.values.elementAt(index),
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






        ],
      ),



    );
  }
}
