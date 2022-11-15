import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/core/utils/app_images.dart';
import 'package:islami/islami_app/presentation/components/moshaf_item.dart';

import '../../../core/utils/app_colors.dart';
import '../../components/mohaf_Item_builder.dart';
import '../../components/my_divider.dart';

class MoshafScreen extends StatelessWidget {
  const MoshafScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);
        return Stack(
          children: [
            Column(
              children: [
                Container(
                  width: width/1,
                  height: height/5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: Image.asset(AppImages.quran),
                ),
                myDivider(),
                buildMoshaf(context: context,),
                Expanded(child: moshafItem())
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:130.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/100,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.primarycolor,
                ),
              ),
            ),
          ],
        );
  }
}
