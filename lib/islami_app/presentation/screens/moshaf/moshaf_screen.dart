import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/presentation/components/moshaf_item.dart';

import '../../../core/utils/app_colors.dart';
import '../../components/mohaf_Item_builder.dart';
import '../../components/my_divider.dart';

class MoshafScreen extends StatelessWidget {
  const MoshafScreen({Key? key}) : super(key: key);

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
        return Stack(
          children: [
            Column(
              children: [
                myDivider(),
                buildMoshaf(context),
                Expanded(child: moshafItem())
              ],
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width/100,
                height: MediaQuery.of(context).size.height,
                color: AppColors.primarycolor,
              ),
            ),
          ],
        );
      },
    );
  }
}
