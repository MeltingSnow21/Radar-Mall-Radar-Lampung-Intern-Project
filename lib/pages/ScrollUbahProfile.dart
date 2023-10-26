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

class ScrollUbahprofile extends StatefulWidget {
  const ScrollUbahprofile({Key? key}) : super(key: key);

  @override
  State<ScrollUbahprofile> createState() => _ScrollUbahprofileState();
}

class _ScrollUbahprofileState extends State<ScrollUbahprofile> {
  var image = {
    "catie1.jpg": "Pempek lenjer Mang Alit",
    "catie2.jpg": "Nasi Uduk Bunda Eva",
    "catie3.jpg": "Kopi Latte - Ochako",
    "catie4.jpg": "Kucing Oren Selbew"
  };


  var lokasi = ["Teluk Betung, Bandar Lampung", "Kota Agung, Tanggamus", "Pajar Isuk, Pringsewu", "Way Halom, Bandar Jaya"];
  var Harga = ["Rp.100.000", "Rp.60.000", "Rp.1.340.000", "Rp.460.000"];



  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        width: double.maxFinite,
        height: 1120,
        child: Stack(
          children: [

            //poto sampul
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
            ),

            //kontainer putih
            Positioned(
              top: 200,
              child: Container(
                height: 3000,
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

              top: 130,
              left: 125,

              child : Container (

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
                    )


                ),
              ),


            ),




            Positioned(
                top : 280,
                child: Container(
              height: 800,
              width: 360,
              margin: EdgeInsets.only(top : 20 , left: 15, right: 20),
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),


              ),


              child: Column(

                children: [


                  Container(


                      margin: const EdgeInsets.only(left: 0, top: 20),
                      child: AppLargeText(
                        text: "Ubah Profile",
                        color: AppColors.mainColor,
                        size: 15,
                      )),

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
                        hintText: '    Nama Depan',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
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
                        hintText: '    Nama Belakang',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Nama Profile',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Email Terdaftar',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Kontak Email',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                        keyboardType: TextInputType.number,

                        decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Nomor Telepon',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Alamat',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.number,

                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Website',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 40,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Nama Toko/Usaha',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),

                    height: 100,
                    margin: const EdgeInsets.only(
                        right: 10, left: 10, top: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '    Deskripsi',
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 50),
                      ),

                      maxLines: 10, // <-- SEE HERE
                      minLines: 1,
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
                              Icons.save,
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

            )),



            Positioned(

              top: 225,
              left: 225,

              child : Container (

                height: 35,
                width: 35,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(100),
                ),

                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,

                ),
              ),


            ),
            Positioned(

              top: 155,
              left: 345,

              child : Container (

                height: 35,
                width: 35,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(100),
                ),

                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,

                ),
              ),


            ),






          ],
        ),
      ),
    );
  }
}
