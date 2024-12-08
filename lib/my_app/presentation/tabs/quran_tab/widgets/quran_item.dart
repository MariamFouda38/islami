import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/color_manager.dart';
import 'package:islami_app/my_app/core/routes_manager.dart';
import 'package:islami_app/my_app/presentation/tabs/quran_tab/quran_tab.dart';

class QuranItem extends StatelessWidget {
  QuranItem({super.key, required this.suraItem});

  SuraItem suraItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.QuranDetailsName,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(suraItem.suraName,
                  style: Theme.of(context).textTheme.titleMedium),
            )),
            VerticalDivider(
                thickness: 3, width: 3, color: ColorsManager.goldColor),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                suraItem.versesNumber,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
