import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.press,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 54.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFFEFEFE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(54.h),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colours.fontColor2,
              size: Dimens.fontSp22,
            ),
            SizedBox(width: Dimens.gapWDp5),
            Text(
              title,
              style: TextStyle(
                fontSize: Dimens.fontSp22,
                color: Colours.fontColor2,
              ),
            ),
            SizedBox(width: Dimens.gapWDp5),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: Dimens.fontSp22,
                color: Colours.fontColor3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
