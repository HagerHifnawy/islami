import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/presentation/components/build_hafeth_item.dart';
import 'package:islami/islami_app/presentation/components/my_divider.dart';
import 'package:islami/islami_app/presentation/components/text_hadeth.dart';

import '../../../core/utils/app_images.dart';

class HadeethScreen extends StatelessWidget {
  const HadeethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);
    return Column(
          children: [
            Container(
              width: width/1,
              height: height/5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle
              ),
              child: Image.asset(AppImages.bsmallah),
            ),
            myDivider(),
            Text(
              'الأحاديث',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            myDivider(),
            Expanded(child: buildHadethItem())
          ],
        );
  }
}