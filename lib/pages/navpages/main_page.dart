import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:radargass/misc/colors.dart';
import 'package:radargass/pages/BeritaTerkini.dart';
import 'package:radargass/pages/Login_apps.dart';
import 'package:radargass/pages/PaketBelumLogin.dart';
import 'package:radargass/pages/navpages/PasangIklanpage.dart';
import 'package:radargass/pages/navpages/bar_item.dart';
import 'package:radargass/pages/navpages/berita.dart';
import 'package:radargass/pages/navpages/home_page.dart';
import 'package:radargass/pages/navpages/my_page.dart';
import 'package:radargass/pages/navpages/search_page.dart';
import 'package:radargass/widgets/chart.dart';

import '../PilihPaket/PIlihPaket.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages =[
    HomePage(),
    BarItemPage(),
    PasangIklanPage(),// hidupkan jika user sudah login
    //PilihPaketBelumLoginPage(), // keadaan user belum login
    Berita(),
    //MyPage(), //gunakan MyPage() jika user sudah login
     PilihPaketBelumLoginPage(),// keadaan user belum login

  ];

  int currentIndex = 0;
  void onTap(int index){
    setState((){
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AppColors.mainColor,
        backgroundColor: Color.fromRGBO(24,233, 111, 0),
        color: AppColors.mainColor.withOpacity(0.7),
        animationDuration: Duration(milliseconds: 300),
        onTap : onTap,

        items: [

        Icon(Icons.grid_view_rounded,
          color: Colors.white,

        ),
        Icon(Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
          Icon(Icons.sell,
            color: Colors.white,
          ),
          Icon(Icons.newspaper_rounded,
            color: Colors.white,
          ),
          Icon(Icons.person,
            color: Colors.white,

          )

      ],

      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
