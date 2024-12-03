import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_app/presentation/tabs/quran_tab/quran_tab.dart';

import '../../../core/asets_manager.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  static BuildContext? get context => null;

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  SuraItem suraItem =
      ModalRoute.of(QuranDetails.context!)?.settings.arguments as SuraItem;

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    if (verses.isEmpty) ReadQuranFile(suraItem.index + 1);
    return Stack(children: [
      Image.asset(AssetsManager.LightMainBBg,
          fit: BoxFit.fill, width: double.infinity, height: double.infinity),
      Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) => Text(verses[index]),
                  itemCount: verses.length,
                ))
    ]);
  }

  void ReadQuranFile(int index) async {
    String FileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = FileContent.trim().split('\n');
    setState(() {});
  }
}
