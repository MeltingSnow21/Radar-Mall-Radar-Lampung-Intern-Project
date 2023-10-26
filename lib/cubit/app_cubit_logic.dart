import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/pages/BeritaTerkini.dart';
import 'package:radargass/pages/DaftarPage.dart';
import 'package:radargass/pages/Disarankan.dart';
import 'package:radargass/pages/DisekitarmuPage.dart';
import 'package:radargass/pages/KeteranganBerita.dart';
import 'package:radargass/pages/KeteranganItem.dart';
import 'package:radargass/pages/Login_apps.dart';
import 'package:radargass/pages/LupaPassword.dart';
import 'package:radargass/pages/OTP.dart';
import 'package:radargass/pages/PilihPaket/BuktiPaket.dart';
import 'package:radargass/pages/PilihPaket/PIlihPaket.dart';
import 'package:radargass/pages/PilihPaket/daftar_paket.dart';
import 'package:radargass/pages/PopulerPage.dart';
import 'package:radargass/pages/bookmarked.dart';
import 'package:radargass/pages/detail_page.dart';
import 'package:radargass/pages/navpages/home_page.dart';
import 'package:radargass/pages/navpages/main_page.dart';
import 'package:radargass/pages/navpages/my_page.dart';
import 'package:radargass/pages/ubahprofile.dart';
import 'package:radargass/pages/verifikasi.dart';
import 'package:radargass/pages/welcome_page.dart';

import '../pages/notifkkasi.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}


class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : BlocBuilder<AppsCubits, CubitStates>(
          builder: (context, state) {
            if (state is DetailState){
              return OpenItem();
            }
            if (state is WelcomeState){
              return WelcomePage();
            }
            if (state is LoadingState){
              return Center( child: CircularProgressIndicator(

              ),);
            }
            if (state is LoadedState){
              return MainPage();
            }

            if (state is NotifState){
              return Notif();

            }

            if (state is ScrollBerita){
              return OpenBerita();

            }

            if (state is BeritaTerkiniState){
              return BeritaTerkini();

            }

            if (state is DisarankanState){
              return DisarankanPage();

            }

            if (state is DisekitarmuState){
              return DisekitarmuPage();

            }    if (state is PopulerState){
              return PopulerPage();

            }


            if (state is BookState){
              return Bookmarked();

            }

            if (state is UbahProfileState){
              return UbahProfilePage();

            }

            if (state is BalikKeProfileState){
              return MyPage();

            }

            if (state is LoginState){
              return Loginpage();

            }

            if (state is LupaPassState){
              return LupaPassPage();

            }
            if (state is OTPState){
              return OTPpage();
            }
            if (state is VerifState){
              return VerifikasiPage();
            }
            if (state is DaftarState){
              return DaftarPage();
            }

            if (state is PilihPaketState){
              return PilihPaketPage();
            }

            if (state is DaftarPaketState){
              return DaftarpaketPage();
            }

            if (state is BuktiPaketState){
              return BuktiPaketPage();
            }


            else{
              return Container();
            }
          }
      )
    );
  }
}
