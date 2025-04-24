import 'package:flutter/material.dart';
import 'package:maintenanceApp/features/widget/textCaption.dart';
import 'package:maintenanceApp/features/widget/textTitle.dart';
import 'package:flutter/cupertino.dart';

class Col extends StatelessWidget {
  const Col(
      {super.key,
      required this.title,
      required this.caption,
      this.warna,
      this.size,
      this.flexSize});
  final String title;
  final String caption;
  final int? flexSize;
  final Color? warna;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: flexSize ?? 3,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: size ?? 24,
                color: Colors.white),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            ": $caption",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: size ?? null,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}
