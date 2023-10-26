import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/ScrollUbahProfile.dart';
import 'package:radargass/pages/scroll_paket_belum_daftar.dart';
import 'package:radargass/pages/scroll_pilihanpaket.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class PilihPaketBelumLoginPage extends StatelessWidget {
  const PilihPaketBelumLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      color: Colors.white,
      child: Stack(
        children: [
          Expanded(
              child: SingleChildScrollView(child: ScrollPilihPaketBelumLogin())),
          Positioned(
            top: 0,

            child: Container(
              width: 395,
              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),),

                boxShadow: [
                  BoxShadow(
                    color: AppColors.mainColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],



              ),
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(top: 70, bottom: 10),

                    width: 350,

                    alignment: Alignment.center,

                    child: AppLargeText(
                      color: AppColors.mainColor,
                      size: 23,
                      text: 'Anda Belum Login',

                    ),),


                  GestureDetector(

                      onTap: () { BlocProvider.of<AppsCubits>(context).GoLogin();},


                      child : Container(
                      width: 350,
                      height: 65,
                      margin: EdgeInsets.only(top: 20),
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
                      child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Container(
                            width: 350,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [

                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(width: 80,),
                                            AppLargeText(
                                              text: "Login Sekarang",
                                              color: Colors.white,
                                              size: 20,
                                            ),

                                          ],
                                        ),

                                      ],
                                    )
                                  ],
                                ),


                              ],
                            ),
                          )))),
                  Container(
                    margin: EdgeInsets.only(top: 30),

                    padding: EdgeInsets.only(left: 100, bottom: 10),
                    width: 350,
                    height: 50,
                    alignment: Alignment.topLeft,

                    child: AppLargeText(
                      color: AppColors.mainColor,
                      size: 20,
                      text: 'Paket Tersedia',

                    ),),
                  SizedBox(height: 40,)









                ],
              ),
            ),
          ),




        ],
      ),
    );
  }
}
