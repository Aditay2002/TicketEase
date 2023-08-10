import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppColumnLayout(
          firstText: 'First Column First Text',
          secondText: 'First Column Second Text',
          alignment: CrossAxisAlignment.start,
        ),
        AppColumnLayout(
          firstText: 'Second Column First Text',
          secondText: 'Second Column Second Text',
          alignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }
}
