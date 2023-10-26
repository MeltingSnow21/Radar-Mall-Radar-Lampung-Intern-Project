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
import 'package:radargass/widgets/DropDownLokasiPasangIklan.dart';
import 'package:radargass/widgets/HariCeklis/Jumat.dart';
import 'package:radargass/widgets/HariCeklis/Kamis.dart';
import 'package:radargass/widgets/HariCeklis/Minggu.dart';
import 'package:radargass/widgets/HariCeklis/Rabu.dart';
import 'package:radargass/widgets/HariCeklis/Sabtu.dart';
import 'package:radargass/widgets/HariCeklis/Selasa.dart';
import 'package:radargass/widgets/HariCeklis/Senin.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/chart.dart';
import 'package:radargass/widgets/dropdonIklan.dart';
import 'package:radargass/widgets/dropdonSerch.dart';
import 'package:radargass/widgets/responsive_button.dart';

import 'ubahprofile.dart';

class Scrollpasangiklan extends StatefulWidget {
  const Scrollpasangiklan({Key? key}) : super(key: key);

  @override
  State<Scrollpasangiklan> createState() => _ScrollpasangiklanState();
}

class _ScrollpasangiklanState extends State<Scrollpasangiklan> {



  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        width: double.maxFinite,
        height: 3260,
        child: Stack(
          children: [

            //poto sampul

            //kontainer putih
            Positioned(
              top : 250,

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
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(60),
                    )),
              ),
            ), //kontainer putih

            Positioned(
                top : 360,

                child: Container(
                  height: 3500,
                  width: 360,
                  margin: EdgeInsets.only(top : 20 , left: 15, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15).withAlpha(20),
                    borderRadius: BorderRadius.circular(10),


                  ),


                  child: Column(

                    children: [


                      Container(


                          margin: const EdgeInsets.only(left: 0, top: 20),
                          child: AppLargeText(
                            text: "Buat Iklan",
                            color: Colors.white,
                            size: 18,
                          )),


                      dropdowniklan(),
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Nama usaha',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),

                      Container(
                        height: 80,
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Deskripsi usaha',
                            contentPadding:
                            EdgeInsets.only(left: 20, top: 20, bottom: 42),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),


                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Informasi Alamat",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),

                      Container(
                        height: 80,
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 0),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Alamat lengkap',
                            contentPadding:
                            EdgeInsets.only(left: 20, top: 20, bottom: 42),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),

                      dropdownLokasiiklan(),

                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Seret pin menuju alamat",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),

                      Container(
                        height: 400,
                        width: 350,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/map2.png"),
                              fit: BoxFit.cover),

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 0),
                        child: Container(
                          margin: EdgeInsets.only(top: 250, left: 280),

                          height: 180,
                          width: 60,

                          child: Column(

                            children: [

                              Container(

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                height: 40,
                                width: 40,

                                child: Icon(
                                  Icons.my_location_rounded,
                                  color: AppColors.mainColor,
                                  size: 30,
                                ),



                              ),
                              SizedBox(height: 10,),
                              Container(

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                height: 40,
                                width: 40,

                                child: Icon(
                                  Icons.zoom_out,
                                  color: AppColors.mainColor,
                                  size: 30,
                                ),



                              ),
                              SizedBox(height: 10,),

                              Container(

                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                height: 40,
                                width: 40,

                                child: Icon(
                                  Icons.zoom_in,
                                  color: AppColors.mainColor,
                                  size: 30,
                                ),



                              ),






                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Informasi Kontak",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),


                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan email',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan website',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan nomor whatsapp',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan nomor telepon',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),



                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Media Produk",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, bottom: 10),
                            child: AppText(
                              color: Colors.white,
                              size: 12,

                              text: "Upload foto gambar utama",

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 350,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, bottom: 10, top : 20),
                            child: AppText(
                              color: Colors.white,
                              size: 12,

                              text: "Upload foto gambar sampul",

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 350,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, bottom: 10, top : 20),
                            child: AppText(
                              color: Colors.white,
                              size: 12,

                              text: "Upload foto galeri produk (maksimal 9)",

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 350,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, bottom: 10, top : 20),
                            child: AppText(
                              color: Colors.white,
                              size: 12,

                              text: "Upload video promosi produk ",

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 350,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Icon(
                              Icons.video_collection_outlined,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),



                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Informasi Harga",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),


                        margin: const EdgeInsets.only(
                            right: 10, left: 10, top: 0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,

                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan harga produk',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),


                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 50, left: 15),
                        child: AppLargeText(
                          text: "Waktu Operasional ",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      height: 400,
                      child : Column (
                        children : [
                      ceklisSenin(),
                      ceklisSelasa(),
                      ceklisRabu(),
                      ceklisKamis(),
                      ceklisJumat(),
                      ceklisSabtu(),
                      ceklisMinggu(),
                      ],
                      ),),




                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: AppLargeText(
                          text: "Jam Operasional ",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(text: "Waktu Buka", color: Colors.white,size: 13,),
                            AppLargeText(text: "Waktu Tutup", color: Colors.white,size: 13,),
                          ],


                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 120,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,

                              ),


                              margin: const EdgeInsets.only(
                                  right: 10, left: 0, top: 0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,

                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '07.30',
                                  contentPadding:
                                  EdgeInsets.only(left: 40),
                                ),

                                maxLines: 1, // <-- SEE HERE
                                minLines: 1,
                              ),
                            ),

                            Container(
                              child: AppText(text: "sampai", size: 12,color: Colors.white,),
                            ),

                            Container(
                          height: 40,
                          width: 120,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                          ),


                          margin: const EdgeInsets.only(
                              right: 0, left: 10, top: 0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,

                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '21.00',
                              contentPadding:
                              EdgeInsets.only(left: 40),
                            ),

                            maxLines: 1, // <-- SEE HERE
                            minLines: 1,
                          ),
                        )
                          ],


                        ),
                      ),



                      //Keterangan Tambahan
                      Container(
                        height: 40,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 50, left: 15),
                        child: AppLargeText(
                          text: "Keterangan tambahan",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),

                      Container(
                        height: 80,
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, ),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,

                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan keterangan tambahan produk',
                            contentPadding:
                            EdgeInsets.only(left: 20, top: 20, bottom: 40),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),





                      Row(
                        children: [


                          Container(
                            height: 50,
                            width: 350,
                            margin: const EdgeInsets.only(left: 10, top: 20),
                            child: GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).Gohome();},
                              child: Container(
                                margin:
                                const EdgeInsets.only(left: 0, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue.withAlpha(90),
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
                                      text: "Simpan",
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),




                    ],


                  ),

                )),
//BATIK
            Positioned(
                top: 50,
                left: 20,
                 child : Container(

                      width: 350,
                      height: 290,
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

                              Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(left: 10, top: 10),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white12,
                                  image: DecorationImage(
                                      image: AssetImage("img/catie4.jpg"),
                                      fit: BoxFit.cover),
                                ),

                              ),

                              SizedBox(width: 20,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      AppLargeText(text: "Alam Islam", color: AppColors.mainColor,),

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

                                      AppLargeText(text: "Iklan Aktif", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                      AppText(
                                        text: "4", size: 13,color: AppColors.mainColor.withOpacity(0.6),
                                      ),
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

                                    AppLargeText(text: "Sisa Kuota Iklan ", size: 13,color:AppColors.mainColor.withOpacity(0.7),),
                                    AppText(
                                      text: "6", size: 13,color: AppColors.mainColor.withOpacity(0.6),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ),
                          SizedBox(height: 10,),

                          Container(
                            height: 50,
                            width: 350,
                            margin: const EdgeInsets.only(left: 10, top: 20),
                            child: GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).GoPilihPaket();},
                              child: Container(
                                margin:
                                const EdgeInsets.only(left: 0, right: 10),
                                height: 30,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.mainColor.withOpacity(0.6),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue.withAlpha(90),                                        spreadRadius: 0.01,
                                        blurRadius: 2,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.stacked_line_chart_outlined,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    AppLargeText(
                                      text: "Tingkatkan Paket",
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),



                    ))),
                  ),


                ])


            ));

  }
}
