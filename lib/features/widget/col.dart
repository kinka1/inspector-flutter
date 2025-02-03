import 'package:application/features/widget/textCaption.dart';
import 'package:application/features/widget/textTitle.dart';
import 'package:flutter/cupertino.dart';

Widget col(String title, String caption) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      children: [
        textTitle(title),
        textCaption(caption),
      ],
    ),
  );
}