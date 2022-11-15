
import 'package:flutter/material.dart';

import '../../../business_logic/cubit/app_cubit.dart';
import '../../../core/utils/app_images.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:70.0),
          child: Container(
            width: width/1,
            height: height/3,
            decoration: BoxDecoration(
                shape: BoxShape.circle
            ),
            child: Image.asset(AppImages.radioScreen),
          ),
        ),
      ],
    );
  }
}
