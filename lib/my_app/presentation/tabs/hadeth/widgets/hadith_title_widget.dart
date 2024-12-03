import 'package:flutter/material.dart';
import 'package:islami_app/my_app/presentation/tabs/hadeth/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(hadith.title),
    );
  }
}
