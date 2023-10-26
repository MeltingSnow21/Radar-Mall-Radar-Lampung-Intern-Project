import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/app_large_text.dart';
import 'package:radargass/widgets/responsive_button.dart';

class ScrollNews extends StatefulWidget {
  const ScrollNews({Key? key}) : super(key: key);

  @override
  State<ScrollNews> createState() => _ScrollNewsState();
}

class _ScrollNewsState extends State<ScrollNews> {
  var a = "Cafe terbaik di bandar lampung - sumber : WAG";
  var b = "Reporter: Dwi Prihantono| Editor: Yuda Pranata";


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Container(
        width: double.maxFinite,
        height: 1950,
        child: Stack(
          children: [


            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/Berita1.jpg"),
                        fit: BoxFit.cover)),
              ),
            ), //foto kucing
            Positioned(
              top: 200,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
              ),
            ), //kontainer putih
            Positioned(

                top: 220,
                left: 20,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      width: 340,
                      margin: EdgeInsets.only(left: 0, right : 20),

                      child: AppLargeText(
                        text: "Rekomendasi tempat Ngopi Terbaik di Bandar Lampung",
                        color: AppColors.mainColor,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0, bottom: 10),
                          width: 10,
                          height: 10,
                          child: Icon(
                            Icons.tag_outlined,
                            color: Colors.orangeAccent,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          height: 20,
                          child: AppText(
                            text: "LifeStyle",
                            size: 13,
                            color: Colors.black54,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0, bottom: 10),
                          width: 10,
                          height: 10,
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.orangeAccent,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 20,
                          child: AppText(
                            text: "Sabtu 23-07-2022,13:49",
                            size: 12,
                            color: Colors.black54,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          width: 10,
                          height: 10,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.orangeAccent,
                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 20,
                          child: AppText(
                            text: "201",
                            size: 12,
                            color: Colors.black54,
                          ),

                        ),




                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),

                    Container(

                      width: 340,
                      margin: EdgeInsets.only(left: 0, right : 20),


                      child: AppText(
                        text: ""+b,
                        color: AppColors.mainColor.withOpacity(0.5),
                        size: 15,
                      ),
                    ),



                    SizedBox(
                      height: 30,
                    ),
                  ],
                )),
            Positioned(
                top: 370,


                child: Column(
                  children: [
                    Container(
                      width: 360,
                      margin: EdgeInsets.only(left: 20, right: 20),



                      child: AppText(

                          text : """ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel dolor suscipit, tincidunt mauris nec, rhoncus risus. Maecenas at cursus velit. In semper mauris id risus sodales, ultricies scelerisque est laoreet. Curabitur mollis sodales nisl. Integer scelerisque augue ac ex mattis mollis. Maecenas arcu sem, venenatis a mi vitae, rutrum aliquam mi. Maecenas vitae neque felis. Donec auctor sagittis finibus. Donec consequat elementum est ac aliquet. Mauris facilisis tincidunt est, in vestibulum ante pellentesque in. Pellentesque consectetur quis turpis eu efficitur. Praesent eget volutpat purus. Ut felis augue, condimentum molestie arcu ac, lacinia suscipit lorem. Mauris consectetur, urna non pellentesque bibendum, eros turpis luctus turpis, non vulputate nisi orci sed velit.

                      Sed eget tincidunt leo. Aliquam dolor risus, luctus vitae libero eget, euismod feugiat metus. Sed congue nibh ac nibh ultrices gravida. Duis justo neque, ornare quis ipsum et, pulvinar consequat nibh. Nam convallis quam eget maximus dictum. Aenean scelerisque, lectus ut scelerisque ultrices, lectus arcu pulvinar magna, at aliquet est mi vel mauris. Integer tristique orci magna. Interdum et malesuada fames ac ante ipsum primis in faucibus.

              Donec ut ipsum ante. In fermentum felis a erat eleifend elementum. Praesent non pretium libero. Sed eget tincidunt leo. Aliquam dolor risus, luctus vitae libero eget, euismod feugiat metus Integer venenatis vestibulum sollicitudin. Quisque suscipit nisi justo, vitae efficitur odio lacinia quis. Donec consectetur vehicula nisi. Donec maximus congue blandit. Quisque nec odio in libero aliquam auctor vitae non diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam fringilla sollicitudin pharetra. Praesent blandit ante id ligula tincidunt ullamcorper. Maecenas consectetur, nulla vitae sagittis varius, metus lorem dignissim velit, non sagittis justo leo ut velit. Quisque vel porttitor sem. Nulla luctus tincidunt leo, vel interdum magna dapibus et"""

                      ),




                    ),







                    Container(
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
                                text: "Tambahkan Komentar",
                                color: AppColors.mainColor,
                                size: 15,
                              )),

                          Container(
                            height: 100,
                            margin: const EdgeInsets.only(
                                right: 10, left: 10, top: 20),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,

                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: '    Tulis komentar anda',
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 40),
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
                                labelText: '    Masukan nama',
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
                                labelText: '    Masukan email',
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 10),
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
                                      Icons.send,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    AppLargeText(
                                      text: "Kirim",
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Container(
                              margin: const EdgeInsets.only(left: 20, top: 20),
                              alignment: Alignment.bottomLeft,
                              child: AppLargeText(
                                text: "Komentar terkait",
                                color: AppColors.mainColor,
                                size: 15,
                              )),
                          Container(
                              margin: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54.withAlpha(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage("img/catie2.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Iro",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                          "Ini merupakan nasi uduk terbaik yang pernah saya makan",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),
                          Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54.withAlpha(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage("img/catie2.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Iro",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                          "Ini merupakan nasi uduk terbaik yang pernah saya makan",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),
                          Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54.withAlpha(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage("img/catie2.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppLargeText(
                                          text: "Iro",
                                          color: Colors.black54,
                                          size: 15),
                                      Container(
                                        width: 200,
                                        height: 30,
                                        child: AppText(
                                          text:
                                          "Ini merupakan nasi uduk terbaik yang pernah saya makan",
                                          size: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )),






                        ],


                      ),

                    ),





                  ],
                )),





            Positioned(
              right: 0,
              top: 160,
              child: Row(
                children: [
                  Container(

                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black26.withAlpha(40),
                      borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(20)),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: AppLargeText(
                          text: "" + a,
                          color: Colors.white,
                          size: 12,
                        )),
                  )
                ],
              ),
            ),







          ],
        ),
      ),
    );
  }
}
