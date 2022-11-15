
import 'package:flutter/material.dart';
import 'build_moshaf_item.dart';

class moshafItem extends StatelessWidget {
  const moshafItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //shrinkWrap: true,
        itemBuilder: (context, index) => buildMoshafItem(),
        separatorBuilder: (context, index) => SizedBox(
          height: MediaQuery.of(context).size.height /20000,
        ),
        itemCount: 20);
  }
}