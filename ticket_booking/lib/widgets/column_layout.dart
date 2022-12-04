import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({
    super.key,
    required this.text1,
    required this.text2,
    required this.alignment,
    this.isColor,
  });

  final String text1;
  final String text2;
  final bool? isColor;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(text1,
            style: isColor == null
                ? Styles.headLineStyle3.copyWith(color: Colors.white)
                : Styles.headLineStyle3),
        Gap(AppLayout.getHeight(5)),
        Text(text2,
            style: isColor == null
                ? Styles.headLineStyle4.copyWith(color: Colors.white)
                : Styles.headLineStyle4),
      ],
    );
  }
}
