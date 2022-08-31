import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/styles.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapHDp14),
      child: Material(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusH24 / 2),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          highlightColor: Colours.buttonHLColor,
          onTap: press,
          child: Container(
            height: 75.h,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontSize: Dimens.fontSp24,
                color: Colours.accentColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
