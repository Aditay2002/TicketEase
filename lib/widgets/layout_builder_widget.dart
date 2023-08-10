import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const ApplayoutBuilderWidget({super.key, this.isColor, required this.sections});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth() / sections).floor() as int, (index) => SizedBox(
            width: 5,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor==null? Colors.white:Colors.black,
              ),
            ),
          )),
        );
      },
    );
  }
}
