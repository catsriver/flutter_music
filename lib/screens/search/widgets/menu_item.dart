import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/styles.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.name,
    required this.iconUrl,
  }) : super(key: key);

  final String name;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24 / 2),
      child: Column(
        children: [
          Container(
            width: 70.h,
            height: 70.h,
            margin: EdgeInsets.only(bottom: Dimens.gapHDp5),
            decoration: const BoxDecoration(
              color: Color(0xFFFEF3F2),
              shape: BoxShape.circle,
            ),
            child: Image.network(
              iconUrl,
              color: const Color(0xFFFD5855),
              height: 36.h,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: Dimens.fontSp18,
              color: Colours.fontColor2,
            ),
          ),
        ],
      ),
    );
  }
}
