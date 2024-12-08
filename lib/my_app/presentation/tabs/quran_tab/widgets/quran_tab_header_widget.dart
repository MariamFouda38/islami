import 'package:flutter/material.dart';

import '../../../../core/color_manager.dart';
import '../../../../core/strings_manager.dart';

class QuranTabHeaderWidgeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(width: 3, color: ColorsManager.goldColor))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(StringsManager.versesNumberlabel,
                    style: Theme.of(context).textTheme.labelMedium)),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
                child: Text(
              StringsManager.ChapterNamelabel,
              style: Theme.of(context).textTheme.labelMedium,
            )),
          ],
        ),
      ),
    );
  }
}
