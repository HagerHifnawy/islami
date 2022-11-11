import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/islami_app/business_logic/cubit/app_cubit.dart';
import 'package:islami/islami_app/presentation/components/build_hafeth_item.dart';
import 'package:islami/islami_app/presentation/components/my_divider.dart';
import 'package:islami/islami_app/presentation/components/text_hadeth.dart';

class HadeethScreen extends StatelessWidget {
  const HadeethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {

        return Column(
          children: [
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
      },
    );
  }
}
// ListView.separated(
//                   shrinkWrap: true,
//                     itemBuilder: (context,index)=>hadethText(),
//                     separatorBuilder: (context,index)=> SizedBox(
//                       height: height / 40,
//                     ),
//                     itemCount: 200)