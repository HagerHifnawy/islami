import 'package:flutter/material.dart';
import 'package:islami/islami_app/presentation/components/text_hadeth.dart';

Widget buildHadethItem() =>  ListView.separated(
          itemBuilder: (context, index) => hadethText(),
          separatorBuilder: (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
          itemCount: 20);
