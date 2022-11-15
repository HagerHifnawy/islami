
import 'package:flutter/material.dart';

import 'my_divider.dart';
class buildMoshaf extends StatelessWidget {
  const buildMoshaf({Key? key,required this.context}) : super(key: key);
final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
  }
}
