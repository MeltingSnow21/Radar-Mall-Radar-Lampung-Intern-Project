


import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radargass/cubit/app_cubit_states.dart';
import 'package:radargass/pages/notifkkasi.dart';


class AppsCubits extends Cubit<CubitStates>{
  AppsCubits() : super(InitialState()){
    emit(WelcomeState());
  }


  DetailPage(){
    emit(DetailState());
  }
  
  Gohome(){
    emit(LoadedState());
  }

  GoNotif(){
    emit(NotifState());
  }

  GoBook(){
    emit(BookState());
  }

  GoBeritaTerkini(){
    emit(BeritaTerkiniState());
  }

  GoBerita(){
    emit(ScrollBerita());
  }

  GoUbahProfile(){
    emit(UbahProfileState());
  }

  GoBalikProfile(){
    emit(BalikKeProfileState());
  }

  GoLogin(){
    emit(LoginState());
  }

  GoLupaPass(){
    emit(LupaPassState());
  }

  GoOTP(){
    emit(OTPState());
  }

  GoVerif(){
    emit(VerifState());
  }

  GoDaftar(){
  emit(DaftarState());
  }

  GoPilihPaket(){
    emit(PilihPaketState());
  }

  GoDaftarPaket(){
    emit(DaftarPaketState());
  }

  GoBuktiPaket(){
    emit(BuktiPaketState());
  }
  GoDisarankan(){
    emit(DisarankanState());
  }

  GoDisekitarmu(){
    emit(DisekitarmuState());
  }
  Gopupuler(){
    emit(PopulerState());
  }

}

