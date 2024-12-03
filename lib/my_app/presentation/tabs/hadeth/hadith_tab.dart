import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_app/core/asets_manager.dart';
import 'package:islami_app/my_app/presentation/tabs/hadeth/widgets/hadith_header_widget.dart';
import 'package:islami_app/my_app/presentation/tabs/hadeth/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<String> AllHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (AllHadithList.isEmpty) {
      loadHadithFile();
    }
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(flex: 1, child: Image.asset(AssetsManager.HadithHeader)),
      HadithHeaderWidget(),
      Expanded(
          flex: 3,
          child: AllHadithList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor))
              : ListView.separated(
                  itemBuilder: (context, index) => HadithTitleWidget(
                        hadith: AllHadithList[index],
                      ),
                  separatorBuilder: (context, index) => Divider(
                        thickness: 3,
                        color: Theme.of(context).primaryColor,
                      ),
                  itemCount: AllHadithList.length))
    ]));
  }

  void loadHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/hadith_file/ahadeth.txt');
    List<String> hadithList = fileContent.split('#');
    for (int i = 0; i < hadithList.length; i++) {
      String hadithItem = hadithList[i];
      List<String> hadithLines = hadithItem.trim().split('/n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('/n');
      Hadith hadith = Hadith(content: content, title: title);
      AllHadithList.add(hadith.toString());
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.content, required this.title});
}
