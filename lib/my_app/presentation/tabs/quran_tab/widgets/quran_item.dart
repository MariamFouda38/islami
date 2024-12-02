import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/color_manager.dart';

class QuranItem extends StatelessWidget {
  QuranItem({super.key, required this.suraName, required this.versesNumber});

  String suraName;
  String versesNumber;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(versesNumber,
                style: Theme.of(context).textTheme.titleMedium),
          )),
          VerticalDivider(
              thickness: 3, width: 3, color: ColorsManager.goldColor),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              suraName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ))
        ],
      ),
    );
  }
}
