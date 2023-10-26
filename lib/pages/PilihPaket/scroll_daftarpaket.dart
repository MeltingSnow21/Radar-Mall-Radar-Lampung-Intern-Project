import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';



class ScrollDaftarPaket extends StatefulWidget {
  const ScrollDaftarPaket({Key? key}) : super(key: key);

  @override
  State<ScrollDaftarPaket> createState() => _ScrollDaftarPaketState();
}

class _ScrollDaftarPaketState extends State<ScrollDaftarPaket> {
  String? gender;


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        width: double.maxFinite,
        height: 1230,
        child: Stack(
          children: [

            //poto sampul

            //kontainer putih
            Positioned(
              top : 400,

              child: Container(
                height: 1400,
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
                      topRight: Radius.circular(100),
                    )),
              ),
            ), //kontainer putih

            Positioned(
                top : 280,

                child: Container(
                  height: 920,
                  width: 360,
                  margin: EdgeInsets.only(top : 20 , left: 15, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),


                  ),


                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [


                      Container(


                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: AppLargeText(
                            text: "Informasi Pribadi",
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
                            hintText: '    Nama depan',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
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
                            hintText: '    Nama Belakang',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
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
                            hintText: '    Email',
                            contentPadding:
                            EdgeInsets.only(left: 20),
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
                          keyboardType: TextInputType.number,

                            decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Nomor telepon',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),




                      Container(


                          margin: const EdgeInsets.only(left: 20, top: 30),
                          child: AppLargeText(
                            text: "Informasi Penagihan",
                            color: Colors.white,
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
                            hintText: '    Nama Toko Usaha ',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
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
                            hintText: '    Alamat baris 1',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
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
                            hintText: '    Alamat baris 2',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 10, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),
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
                            hintText: '    Provensi',
                            contentPadding:
                            EdgeInsets.only(left: 20),
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
                          keyboardType: TextInputType.number,

                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Kode Pos',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),


                      Container(
                        height: 180,
                        width: 350,
                        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                        decoration: BoxDecoration(
                        color: Colors.black54.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin : EdgeInsets.only(left: 20, bottom : 10),
                                  child: AppLargeText(text: "Metode Pembayaran", size: 15, color: Colors.white,)),

                              Container(

                                child: ListTile(
                                  title: AppText(text: "Bank Transfer",color: Colors.white,),
                                  leading: Radio(
                                      value: "Bank Transfer",
                                      groupValue: gender,
                                      onChanged: (value){
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      }),
                                ),
                              ),

                              Container(

                                  child: ListTile(
                                  title: AppText(text: 'Kantor Radar Lampung', color: Colors.white,),
                                  leading: Radio(
                                      value: "Kantor Radar Lampung",
                                      groupValue: gender,
                                      onChanged: (value){
                                        setState(() {
                                          gender = value.toString();
                                        });
                                      }),
                                ),
                              )
                            ]
                        ),
                      ),






                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [








                           Container(
                              height: 50,
                              width: 360,
                              margin: const EdgeInsets.only(left:0, top: 20),
                              child: GestureDetector(
                                onTap: () { BlocProvider.of<AppsCubits>(context).GoBuktiPaket();},
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
                                        text: "Buat Pesanan",
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


          ],
        ),
      ),
    );
  }
}
