import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/core/utils/app_images.dart';
import 'package:islami/islami_app/presentation/screens/hadeeth/hadeeth_screen.dart';
import 'package:islami/islami_app/presentation/screens/moshaf/moshaf_screen.dart';
import 'package:islami/islami_app/presentation/screens/radio/radio_screen.dart';
import 'package:islami/islami_app/presentation/screens/sebha/sebha_screen.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentindex =0;
  List<Widget> screens = [
    MoshafScreen(),
    HadeethScreen(),
    SebhaScreen(),
    RadioScreen(),
  ];
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon:
    ImageIcon(AssetImage
      (AppImages.moshaf)
    ),label:'القرآن' ,
    ),
    BottomNavigationBarItem(icon:
    ImageIcon(AssetImage
      (AppImages.hadeth)
    ),label:'أحاديث' ,
    ),
    BottomNavigationBarItem(icon:
    ImageIcon(AssetImage
      (AppImages.sebha)
    ),label:'سبحه' ,
    ),
    BottomNavigationBarItem(icon:
    ImageIcon(AssetImage
      (AppImages.radio)
    ),label:'راديو' ,
    ),

  ];
  changeNavBar(index){
    currentindex=index;
    emit(AppChangeBottomNavState());
  }
  int countTasbeeh = 0;
   masbahaCount(){
    countTasbeeh++;
    emit(AppCountMasbahaState(countTasbeeh));
  }
}
