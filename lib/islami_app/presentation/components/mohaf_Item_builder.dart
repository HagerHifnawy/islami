
import 'package:flutter/material.dart';

import 'my_divider.dart';

Widget buildMoshaf(context)=>Stack(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('اسم السورة',
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w400
          ),),
        Text('عدد الآيات',
          style: TextStyle(
              fontSize: 25.0
          ),),
      ],
    ),

    Padding(
      padding: const EdgeInsets.only(top:40.0),
      child: myDivider(),
    ),
  ],
);