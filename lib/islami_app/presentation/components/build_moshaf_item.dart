import 'package:flutter/material.dart';

Widget buildMoshafItem() =>  Padding(
  padding: const EdgeInsets.only(top:5.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('البقرة',
            style: TextStyle(
                fontSize: 25.0,
              fontWeight: FontWeight.w900
            ),),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('286',
            style: TextStyle(
                fontSize: 25.0,
              fontWeight: FontWeight.w900
            ),),
        ],
      ),
    ],
  ),
);
