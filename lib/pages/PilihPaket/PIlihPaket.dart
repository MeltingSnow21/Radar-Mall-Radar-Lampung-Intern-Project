import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/ScrollUbahProfile.dart';
import 'package:radargass/pages/scroll_pilihanpaket.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';

class PilihPaketPage extends StatelessWidget {
  const PilihPaketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      color: Colors.white,
      child: Stack(
        children: [
          Expanded(
              child: SingleChildScrollView(child: ScrollPilihPaket())),
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
                  SizedBox(height: 10,),
                  Container(

                    padding: EdgeInsets.only(left: 5,top: 30),
                    width: 350,
                    height: 50,
                    alignment: Alignment.topLeft,

                    child: AppLargeText(
                      color: AppColors.mainColor,
                      size: 18,
                      text: 'Status Paket Anda',

                    ),),

                  Container(
                      width: 350,
                      height: 100,
                      margin: EdgeInsets.only(top: 30),
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
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("img/batik1.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            width: 350,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
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
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            AppLargeText(
                                              text: "Alam Islam",
                                              color: AppColors.mainColor,
                                            ),
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
                                        AppText(
                                          text: "Personal Member",
                                          color: AppColors.mainColor
                                              .withOpacity(0.8),
                                        ),
                                      ],
                                    )
                                  ],
                                ),


                              ],
                            ),
                          ))),
                  Container(
                    margin: EdgeInsets.only(top: 50),

                    padding: EdgeInsets.only(left: 100, bottom: 20),
                    width: 350,
                    height: 50,
                    alignment: Alignment.topLeft,

                    child: AppLargeText(
                      color: AppColors.mainColor,
                      size: 20,
                      text: 'Paket Tersedia',

                    ),),









                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: Row(
              children: [
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
                )
              ],
            ),
          ),



        ],
      ),
    );
  }
}
