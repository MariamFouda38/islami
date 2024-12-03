import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/asets_manager.dart';
import 'package:islami_app/my_app/presentation/tabs/quran_tab/widgets/quran_item.dart';
import 'package:islami_app/my_app/presentation/tabs/quran_tab/widgets/quran_tab_header_widget.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<String> SuraNameList = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> VersesNumberList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AssetsManager.QuranHeaderImage)),
          QuranTabHeaderWidgeet(),
          Expanded(
              flex: 3,
              child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 3,
                  color: Theme.of(context).dividerColor,
                ),
                itemBuilder: (context, index) => QuranItem(
                    suraItem: SuraItem(
                        index: index,
                        suraName: SuraNameList[index],
                        versesNumber: VersesNumberList[index])),
                itemCount: SuraNameList.length,
              ))
        ],
      ),
    );
  }
}

class SuraItem {
  String suraName;
  String versesNumber;
  int index;

  SuraItem(
      {required this.index,
      required this.suraName,
      required this.versesNumber});
}
