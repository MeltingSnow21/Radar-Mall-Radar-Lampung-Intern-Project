import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/gridItemScroll.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/dropdonSerch.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../../cubit/app_cubit.dart';
import '../../widgets/app_large_text.dart';
import '../../widgets/dropdownBerita.dart';



var image = {
  "Berita4.jpg": "5 Duelist Agent Terbaik Valorant Yang Bisa Kamu Mainkan Saat Ini",
  "Berita3.jpg": "Rekomendasi Laptop Pelajar Untuk Sambut Tahun Ajaran Baru",
  "Berita2.jpg": "Begini Maksud Tersembunyi dari tingkah lucu 'Anabul' kesayanganmu",
};

var Judul = [
  "5 Duelist Agent Terbaik Valorant Yang Bisa Kamu Mainkan Saat Ini",
  "Rekomendasi Laptop Pelajar Untuk Sambut Tahun Ajaran Baru",
  "Begini Maksud Tersembunyi dari tingkah lucu 'Anabul' kesayanganmu"

];

var Isi = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel dolor suscipit, tincidunt mauris nec, rhoncus risus. Maecenas at cursus velit. In semper mauris id risus sodales, ultricies scelerisque est laoreet. Curabitur mollis sodales nisl. Integer scelerisque augue ac ex mattis mollis. Maecenas arcu sem, venenatis a mi vitae, rutrum aliquam mi. Maecenas vitae neque felis. Donec auctor sagittis finibus. Donec consequat elementum est ac aliquet. Mauris facilisis tincidunt est, in vestibulum ante pellentesque in. Pellentesque consectetur quis turpis eu efficitur. Praesent eget volutpat purus. Ut felis augue, condimentum molestie arcu ac, lacinia suscipit lorem. Mauris consectetur, urna non pellentesque bibendum, eros turpis luctus turpis, non vulputate nisi orci sed velit. ",
"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel dolor suscipit, tincidunt mauris nec, rhoncus risus. Maecenas at cursus velit. In semper mauris id risus sodales, ultricies scelerisque est laoreet. Curabitur mollis sodales nisl. Integer scelerisque augue ac ex mattis mollis. Maecenas arcu sem, venenatis a mi vitae, rutrum aliquam mi. Maecenas vitae neque felis. Donec auctor sagittis finibus. Donec consequat elementum est ac aliquet. Mauris facilisis tincidunt est, in vestibulum ante pellentesque in. Pellentesque consectetur quis turpis eu efficitur. Praesent eget volutpat purus. Ut felis augue, condimentum molestie arcu ac, lacinia suscipit lorem. Mauris consectetur, urna non pellentesque bibendum, eros turpis luctus turpis, non vulputate nisi orci sed velit. ",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel dolor suscipit, tincidunt mauris nec, rhoncus risus. Maecenas at cursus velit. In semper mauris id risus sodales, ultricies scelerisque est laoreet. Curabitur mollis sodales nisl. Integer scelerisque augue ac ex mattis mollis. Maecenas arcu sem, venenatis a mi vitae, rutrum aliquam mi. Maecenas vitae neque felis. Donec auctor sagittis finibus. Donec consequat elementum est ac aliquet. Mauris facilisis tincidunt est, in vestibulum ante pellentesque in. Pellentesque consectetur quis turpis eu efficitur. Praesent eget volutpat purus. Ut felis augue, condimentum molestie arcu ac, lacinia suscipit lorem. Mauris consectetur, urna non pellentesque bibendum, eros turpis luctus turpis, non vulputate nisi orci sed velit. ",

];

var tag = [
  "Technology", "Lifestyle", "Lifestyle"
];

var time = [
  "21/07/2022", "13/07/2022","30/07/2022",
];

var view=[
  "170", "320", "129"
];


class Berita extends StatelessWidget {

  const Berita({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Stack(


        children:[
          Positioned(

            child:             Column(
              children: [


                Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top : 20),
                    child: CupertinoSearchTextField(
                      style: TextStyle(fontSize: 14.0, height:1.2, color: Colors.black),
                      placeholder : 'Ketahui berita hari ini',


                      decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 0.01,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                    )),
                dropdownB(),
              ],
            ),
          ),
          //Positioned(child: dropdown()),

          Container(
            alignment: Alignment.centerLeft,
            height: double.maxFinite,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20, top: 120),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<AppsCubits>(context).GoBerita();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Container(
                      width: 170,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 0.01,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Container(
                                  margin: const EdgeInsets.only(left: 10, top: 10),

                                  //margin: const EdgeInsets.only(right: 40),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "img/" + image.keys.elementAt(index)),
                                          fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height : 70,
                                      width: 220,
                                      margin : const EdgeInsets.only(left: 10),

                                      child: AppLargeText(
                                        text: Judul.elementAt(index),
                                        color: AppColors.mainColor,
                                        size: 17,
                                      ),
                                    ),
                                    Row(

                                      children: [

                                        Container(
                                          margin: EdgeInsets.only(left: 10, bottom: 10),
                                          width: 10,
                                          height: 10,
                                          child: Icon(
                                              Icons.remove_red_eye,
                                               color: Colors.orangeAccent,
                                        ),

                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          width: 40,
                                          height: 15,
                                          child: AppText(
                                            text: view.elementAt(index),
                                          ),

                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 3, bottom: 10),
                                          width: 10,
                                          height: 10,
                                          child: Icon(
                                            Icons.calendar_month,
                                            color: Colors.orangeAccent,
                                          ),

                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          width: 90,
                                          height: 15,
                                          child: AppText(
                                            text: time.elementAt(index),
                                          ),

                                        ),


                                      ],



                                    )
                                  ],
                                )                              ],
                            ),
                            Container(
                              height : 140,
                              width: double.maxFinite,
                              margin : const EdgeInsets.only(left: 10, right: 10, top : 10),

                              child: AppText(
                                text: Isi.elementAt(index),
                                color: Colors.black54,
                                size: 15,
                              ),
                            ),
                          Container(
                            alignment: Alignment. topRight,
                            margin: EdgeInsets.only(right: 20, top: 30),
                            width: double.maxFinite,
                            height: 40,

                            child: Row(


                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, bottom: 10),
                                  width: 10,
                                  height: 10,
                                  child: Icon(
                                    Icons.tag_outlined,
                                    color: Colors.orangeAccent,
                                  ),

                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 90,
                                  height: 20,
                                  child: AppText(
                                    text: tag.elementAt(index),
                                  ),

                                ),




                                Container(
                                  height: 40,
                                  width: 150,
                                  margin: EdgeInsets.only(left: 50),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color:AppColors.mainColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),


                                  child: AppLargeText(
                                    text: "Baca selengkapnya ",
                                    size: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),



                          )


                          //SizedBox(height: 2,),

                          ]),
                    ),
                  ),
                );
              },
            ),
          ),






        ],
      ),



    );
  }
}
