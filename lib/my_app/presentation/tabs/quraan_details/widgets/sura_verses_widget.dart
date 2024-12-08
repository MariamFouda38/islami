import 'package:flutter/material.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key, required this.verse});

  String verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      elevation: 14,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
    );
  }
}
