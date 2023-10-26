import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';



class ScrollLogin extends StatefulWidget {
  const ScrollLogin({Key? key}) : super(key: key);

  @override
  State<ScrollLogin> createState() => _ScrollLoginState();
}

class _ScrollLoginState extends State<ScrollLogin> {



  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        width: double.maxFinite,
        height: 760,
        child: Stack(
          children: [

            //poto sampul

            //kontainer putih
            Positioned(
              top : 400,

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
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(100),
                    )),
              ),
            ), //kontainer putih

            Positioned(
              top : 240,

                child: Container(
                  height: 1000,
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
                            text: "Login",
                            color: AppColors.mainColor,
                            size: 18,
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
                            hintText: '    Masukan Email',
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
                            obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '    Masukan Password',
                            contentPadding:
                            EdgeInsets.only(left: 20),
                          ),

                          maxLines: 1, // <-- SEE HERE
                          minLines: 1,
                        ),
                      ),






                      Row(
                        children: [
                          SizedBox(width: 20,),

                          GestureDetector(
                          onTap: () { BlocProvider.of<AppsCubits>(context).GoLupaPass();},
                               child: AppLargeText(text: "Lupa Password",size: 15,color: Colors.white70,)),

                          Container(
                            height: 50,
                            width: 120,
                            margin: const EdgeInsets.only(left: 110, top: 20),
                            child: GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).Gohome();},
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
                                      Icons.login,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    AppLargeText(
                                      text: "Masuk",
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
                      SizedBox(height: 20,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                              margin: EdgeInsets.only(top: 20),
                              width: 120,
                              height: 10,
                              decoration: BoxDecoration(


                                  border: Border(
                                    bottom: BorderSide( //                   <--- left side
                                      color: Colors.white,
                                      width: 0.5,
                                    ),)

                              ),

                          ),
                          Container(
                              height: 20,
                              width: 100,
                              child: AppText(text: "atau login dengan", color: Colors.white70, size: 12,)),
                          Container(

                              margin: EdgeInsets.only(top: 20),
                              width: 120,
                              height: 10,
                              decoration: BoxDecoration(


                                  border: Border(
                                    bottom: BorderSide( //                   <--- left side
                                      color: Colors.white,
                                      width: 0.5,
                                    ),)

                              )



                          ),


                        ],
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).Gohome();},



                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.alternate_email_outlined,
                                  color: Colors.blueAccent,
                                ),


                              ),
                            ),
                            GestureDetector(
                              onTap: () { BlocProvider.of<AppsCubits>(context).Gohome();},

                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                    Icons.facebook,
                                  color: Colors.blueAccent,
                                ),


                              ),
                            )


                          ],

                        ),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        margin: EdgeInsets.only(left: 75),
                        child: Row(
                          children: [
                            AppText(text: "Belum memiliki Akun ?", size: 12, color: Colors.white54,),
                            GestureDetector(



                                onTap: () {
                                BlocProvider.of<AppsCubits>(context).GoDaftar();
                                ;},
                                child: AppLargeText(text: " Daftar Sekarang", size: 12, color: Colors.white,)),

                          ],
                        ),
                      )


                    ],


                  ),

                )),

            Positioned(
                top: 100,
                left: 60,

                child: Container(
                  alignment: Alignment.center,


              height: 100,

              child: Row (
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Container(
                    width: 100,
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white12,
                      image: DecorationImage(
                          image: AssetImage("img/keranjang.png"),
                          fit: BoxFit.cover),
                    ),

                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),

                      AppLargeText(text: "Radar Mall", color: AppColors.mainColor,),
                      AppText(text: "Solusi kebutuhanmu"),



                    ],

                  )

                ],



              ),



            ))


          ],
        ),
      ),
    );
  }
}
