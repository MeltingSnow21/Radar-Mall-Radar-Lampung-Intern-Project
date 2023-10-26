import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/gridItemScroll.dart';
import 'package:radargass/widgets/app_adj.dart';
import 'package:radargass/widgets/dropdonSerch.dart';
import 'package:radargass/widgets/dropdown.dart';
import 'package:radargass/widgets/app_large_text.dart';

import '../../cubit/app_cubit.dart';
import '../../widgets/app_large_text.dart';



var image = {
  "Produk1.jpg": "Kopi Hitam Bang Rizky",
  "Produk2.jpg": "Es Teh Mba Indah",
  "Produk3.jpg": "Kulkas 2 Pintu Minat Inbok",
  "Produk4.jpg": "Andrie Elektronik"
};

var lokasi = ["Teluk Betung, Bandar Lampung", "Kota Agung, Tanggamus", "Pajar Isuk, Pringsewu", "Way Halom, Bandar Jaya"];
var Harga = ["Rp.100.000", "Rp.60.000", "Rp.1.340.000", "Rp.460.000"];


class BarItemPage extends StatelessWidget {

  const BarItemPage({Key? key}) : super(key: key);


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
                    placeholder : 'Temukan kebutuhanmu',


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
                dropdown(),
                dropdownSearch(),


              ],
            ),
          ),
         //Positioned(child: dropdown()),



          Container(
          padding: const EdgeInsets.only(top: 160),
          child: Stack(
            children : [



           GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (1 / 1.7),

                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {

                return Container(

                  margin : const EdgeInsets.only(left: 10),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 10),

                    child :  GestureDetector(
                      onTap: () {
                        BlocProvider.of<AppsCubits>(context).DetailPage();
                      },

                    child: Container(
                      width: 170,
                      height: 300,
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
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 10),

                              //margin: const EdgeInsets.only(right: 40),
                              width: 150,
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "img/" + image.keys.elementAt(index)),
                                      fit: BoxFit.cover)),
                            ),
                            //SizedBox(height: 2,),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [

                                  //tulisannya

                                  Column (
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children : [
                                        Container(
                                          margin : const EdgeInsets.only(left: 20, top: 20),

                                          child: AppLargeText(
                                            text: image.values.elementAt(index),
                                            color: AppColors.mainColor,
                                            size: 12,
                                          ),
                                        ),
                                        Container(
                                          margin : const EdgeInsets.only(left: 20, top: 8),

                                          child: AppText(
                                            text: lokasi.elementAt(index),
                                            color: Colors.black38,
                                            size: 10,
                                          ),
                                        ),
                                        Container(
                                          margin : const EdgeInsets.only(left: 20, top: 5),

                                          child: AppText(
                                            text: Harga.elementAt(index),
                                            color: AppColors.mainColor,
                                            size: 10,
                                          ),
                                        )

                                      ]),




                                ])
                          ]),
                    ),),
                  ),

                );

              },
            ),
            ]
          ),
        )],
      ),



    );
  }
}
