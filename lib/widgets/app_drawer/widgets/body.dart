import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colours.secondaryBgColor,
        ),
        child: ListView(
          padding: EdgeInsets.only(
            left: Dimens.gapWDp24,
            right: Dimens.gapWDp24,
            bottom: Dimens.gapHDp24 * 1.5,
          ),
          children: children,
        ),
      ),
    );
  }
}
