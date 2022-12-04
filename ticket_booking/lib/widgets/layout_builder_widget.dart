import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
    this.isColor,
    required this.sections,
    this.width = 3,
  });

  final bool? isColor;
  final int sections;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (boxConstraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.white : Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
