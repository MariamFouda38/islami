import 'package:flutter/material.dart';

import '../../../../core/strings_manager.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(color: Theme.of(context).primaryColor))),
        child: Text(StringsManager.ElHadithlabel,
            style: Theme.of(context).textTheme.bodyMedium));
  }
}
