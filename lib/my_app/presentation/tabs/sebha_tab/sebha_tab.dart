import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/asets_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> Azkar = ['سبحان الله', 'الحمد الله', 'الله اكبر'];
  int Counter = 0;
  int index = 0;
  double Angle = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AssetsManager.HeadSebhaLight),
              Padding(
                  padding: EdgeInsets.only(top: size.height * 0.036),
                  child: Transform.rotate(
                    angle: Angle,
                    child: Image.asset(
                        height: size.height * 0.33,
                        AssetsManager.BodySebhaLight),
                  )),
            ],
          ),
          Text('عدد التسبيحات',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 25, fontWeight: FontWeight.w400)),
          Spacer(
            flex: 1,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(Counter.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 25)),
          ),
          Spacer(
            flex: 1,
          ),
          InkWell(
            onTap: (() {
              OnZekrClick();
            }),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(Azkar[index].toString(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 25)),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  OnZekrClick() {
    Angle = 0.1;
    if (Counter < 33) {
      Counter++;
    } else {
      Counter = 0;
      index++;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    setState(() {});
  }
}
