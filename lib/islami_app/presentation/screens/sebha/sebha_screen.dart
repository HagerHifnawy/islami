import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/core/utils/app_colors.dart';

import '../../../core/utils/app_images.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit, AppStates>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);
    return Column(
      children: [
        SizedBox(
          width: width/ 1,
          height: height/ 2.5,
          child: Image(image: AssetImage(AppImages.masbaha)),
        ),
        SizedBox(
          height: height/40,
        ),
        Text(
          'عدد التسبيحات',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height / 40,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primarycolor,
          ),
          width: width/6,
          height: height/10,
          child: Center(
            child: Text('${cubit.countTasbeeh}',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          ),
        ),
        SizedBox(
          height: height / 40,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.primarycolor,
          ),
          width: width/3,
          height: height/13,
          child: MaterialButton(
            onPressed: () {
              cubit.masbahaCount();
            },
            child: Text(
              "سبحان الله",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  },
);
  }
}
