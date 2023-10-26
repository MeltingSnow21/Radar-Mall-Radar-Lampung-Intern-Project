import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../widgets/app_adj.dart';

class OTPpage extends StatelessWidget {
  const OTPpage({Key? key}) : super(key: key);

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

                  margin: const EdgeInsets.only(left: 0, top: 80, bottom: 10),
                  child: AppLargeText(
                    text: "Masukan Kode OTP",
                    color: Colors.white,
                    size: 20,
                  )),

              Container(
                height: 40,

                margin: const EdgeInsets.only(
                    right: 10, left: 10, top: 20),
                child: OTPTextField(

                  length: 4,
                  width: MediaQuery.of(context).size.width,

                  fieldWidth: 80,
                  style: TextStyle(

                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
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
                        BlocProvider.of<AppsCubits>(context).GoVerif();
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
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppLargeText(
                              text: "Verifikasi",
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
                      Icons.confirmation_number_rounded,
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
                        text: "Kode OTP", size: 15, color: Colors.white,),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 150,
                        child: AppText(
                          text: "Periksa email anda, kami telah mengirimkan 4 digit kode untuk verifikasi",
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
