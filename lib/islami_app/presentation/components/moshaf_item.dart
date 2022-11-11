
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import 'build_moshaf_item.dart';
import 'my_divider.dart';


Widget moshafItem() => ListView.separated(
  //shrinkWrap: true,
    itemBuilder: (context, index) => buildMoshafItem(),
    separatorBuilder: (context, index) => SizedBox(
      height: MediaQuery.of(context).size.height /20000,
    ),
    itemCount: 20);