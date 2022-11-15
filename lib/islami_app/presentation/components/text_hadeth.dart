import 'package:flutter/material.dart';
class hadethText extends StatelessWidget {
  const hadethText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'الحديث رقم 1',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
