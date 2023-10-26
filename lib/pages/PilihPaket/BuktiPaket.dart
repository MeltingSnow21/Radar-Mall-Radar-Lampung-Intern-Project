import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../../widgets/app_adj.dart';

class BuktiPaketPage extends StatelessWidget {
  const BuktiPaketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      color: AppColors.mainColor,
      child: Stack(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(),
              Container(

                  margin: const EdgeInsets.only(left: 115, top: 80, bottom: 20),
                  child: AppLargeText(
                    text: "Pembayaran Paket",
                    color: Colors.white,
                    size: 20,
                  )),
              Container(
                width: 340,

                  margin: const EdgeInsets.only(left: 25, bottom: 0),
                  child: AppText(
                    text: "Pemesanan paket berhasil, lakukan pembayaran sesuai metode yang anda pilih sebagai berikut",
                    color: Colors.white,
                    size: 15,
                  )),


            ],


          ),
          Positioned(
            top: 190,
            left: 22,
            child: Container(
              alignment: Alignment.center,
              height: 360,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(90),
                borderRadius: BorderRadius.circular(10),

                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(0, -20), // changes position of shadow
                  ),
                ],

              ),

              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(width: 20,),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                        ),


                        child: Icon(
                          Icons.home_work,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          AppLargeText(
                            text: "Pembayaran Ditempat", size: 15, color: Colors.white,),
                          Container(
                            alignment: Alignment.center,
                            height: 85,
                            width: 200,
                            child: AppText(
                              text: "Graha Pena Lampung Lantai 2, Jalan Sultan Agung No. 18, Sepangjaya, Labuhanratu, Bandar Lampung, Lampung, 35148.",
                              color: Colors.white70,
                              size: 14,

                            ),),
                        ],

                      )


                    ],


                  ),
                  SizedBox(height: 20,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(width: 20,),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                        ),


                        child: Icon(
                          Icons.credit_card_outlined,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          AppLargeText(
                            text: "Pembayaran Transfer", size: 15, color: Colors.white,),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 200,
                            child: AppText(
                              text: "Nama Bank: Bank Lampung",
                              color: Colors.white70,
                              size: 14,

                            ),),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 200,
                            child: AppText(
                              text: "No. Rekening: 397.00.02.00708.1",
                              color: Colors.white70,
                              size: 14,

                            ),),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 200,
                            child: AppText(
                              text: "Nama Rekening: PT. Radar Lampung Online",
                              color: Colors.white70,
                              size: 14,

                            ),),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 200,
                            child: AppLargeText(
                              text: "Catatan: Kirim bukti transfer melalui whatsapp atau email",
                              color: Colors.white70,
                              size: 14,

                            ),),

                        ],

                      )


                    ],


                  ),
                ],
              ),


            ),
          ),

          Positioned(
              
              top: 580,
              left : 10,
              child: Container(
                margin: EdgeInsets.only(left: 30),
            
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.whatsapp_rounded
                        ,color: AppColors.mainColor,
                          size: 18,

                        )),
                    SizedBox(width: 40,),
                    AppText(text: "Indah : 0858-3213-3437 "
                    ,color: Colors.white,

                    ),
                  ],

                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.email_outlined
                          ,color: AppColors.mainColor,
                          size: 17,

                        )),
                    SizedBox(width: 40,),
                    AppText(text: "Email : support@radarmall.co.id "
                      ,color: Colors.white,

                    ),
                  ],

                ),





             
              ],
              
              
            ),
            
            
          )),
          Positioned(
            top: 650,
            left: 20,
            child: Container(
              height: 50,
              width: 350,
              margin: const EdgeInsets.only(left: 0, top: 20),
              child: GestureDetector(
                onTap: () { BlocProvider.of<AppsCubits>(context).Gohome();},
                child: Container(
                  margin:
                  const EdgeInsets.only(left: 10, right: 10),
                  height: 30,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
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
                        Icons.done,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AppLargeText(
                        text: "Selesai",
                        size: 13,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
