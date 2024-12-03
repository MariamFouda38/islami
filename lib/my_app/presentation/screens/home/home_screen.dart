import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/asets_manager.dart';
import 'package:islami_app/my_app/core/strings_manager.dart';
import 'package:islami_app/my_app/presentation/tabs/hadith_tab.dart';
import 'package:islami_app/my_app/presentation/tabs/quran_tab.dart';
import 'package:islami_app/my_app/presentation/tabs/radio_tab.dart';
import 'package:islami_app/my_app/presentation/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/my_app/presentation/tabs/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  int SelectedTab = 0;
  List<Widget> Tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsManager.LightMainBBg,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
            appBar: AppBar(
          title: const Text(StringsManager.AppTitle),
          centerTitle: true,
        )),
        BottomNavigationBar(
            currentIndex: SelectedTab,
            onTap: (index) {
              index = SelectedTab;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.QuranIcon)),
                  label: StringsManager.Quranlabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.HagithIcon)),
                  label: StringsManager.Hadithlabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.RadioIcon)),
                  label: StringsManager.Radiolabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManager.SebhaIcon)),
                  label: StringsManager.Tasbehlabel),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: StringsManager.settinglabel)
            ])
      ],
    );
  }

  void setState(Null Function() param0) {}

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
