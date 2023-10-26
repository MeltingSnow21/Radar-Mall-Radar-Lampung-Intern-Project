import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../widgets/app_adj.dart';

class LupaPassPage extends StatelessWidget {
  const LupaPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      color: AppColors.mainColor,
      child: Stack(
        children: [

          Column(

            children: [


              Container(


                  margin: const EdgeInsets.only(left: 0, top: 20),
                  child: AppLargeText(
                    text: "Login",
                    color: AppColors.mainColor,
                    size: 18,
                  )),

              Container(
                alignment: Alignment.center,
                height: 40,
                width: 220,
                margin: const EdgeInsets.only(
                    right: 10, left: 10, top: 20),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),


                ),
                child: AppLargeText(
                  text: "Masukan email", color: Colors.white, size: 20,),
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
                    hintText: '    Masukan email',
                    contentPadding:
                    EdgeInsets.only(left: 20),
                  ),

                  maxLines: 10, // <-- SEE HERE
                  minLines: 1,
                ),
              ),


              Row(
                children: [
                  SizedBox(width: 20,),


                  Container(
                    height: 50,
                    width: 120,
                    margin: const EdgeInsets.only(left: 110, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<AppsCubits>(context).GoOTP();
                      },
                      child: Container(
                        margin:
                        const EdgeInsets.only(left: 10, right: 10),
                        height: 30,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.withAlpha(90),                            boxShadow: [
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
                              text: "Temukan",
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
          Positioned(
            top: 280,
            left: 43,
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 310,
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

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                    ),


                    child: Icon(
                      Icons.coffee_sharp,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      AppLargeText(
                        text: "Rileks", size: 15, color: Colors.white,),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 150,
                        child: AppText(
                          text: "Ambil secangkir kopi dan bersantai, lalu cobalah mengingat kembali katasandi anda",
                          color: Colors.white70,
                          size: 14,

                        ),),
                    ],

                  )


                ],


              ),


            ),
          ),


          Positioned(
              top: 700,
              child: Container(
                margin: EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    AppText(text: "Sudah ingat kembali ?",
                      size: 12,
                      color: Colors.white54,),
                    GestureDetector(

                      onTap: () {
                        BlocProvider.of<AppsCubits>(context).GoLogin();
                      },


                      child: AppLargeText(
                        text: " Coba Masuk", size: 12, color: Colors.white,),
                    ),

                  ],
                ),
              )
          )


        ],
      ),
    );
  }
}
