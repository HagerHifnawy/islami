import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/core/utils/app_colors.dart';

import '../../core/utils/app_images.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return SafeArea(
          child: Container(
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,
                image: AssetImage(AppImages.defaultBackGround)
            )),
            child: Scaffold(
              appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,
                title: Text('إسلامي',style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: AppColors.accentcolor),),
                centerTitle: true,),
              backgroundColor: Colors.transparent,
              bottomNavigationBar:Theme(
        data: Theme.of(context).copyWith(canvasColor: AppColors.primarycolor),
              child:BottomNavigationBar(
                currentIndex: cubit.currentindex,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: AppColors.accentcolor,
                selectedIconTheme: IconThemeData(size: 40),
                onTap:(index){
                  cubit.changeNavBar(index);
                },
                items:cubit.bottomItems,
              ),),
              body: cubit.screens[cubit.currentindex],
            ),
          ),
        );
      },
    );
  }
}
