import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/styles.dart';
import './list_item.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    this.headerTitle,
    required this.children,
    Key? key,
  })  : assert(children.length >= 1),
        super(key: key);

  final String? headerTitle;
  final List<ListItem> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimens.gapHDp24 / 2),
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.circular(Dimens.radiusH24 / 2),
      ),
      child: Column(
        children: [
          if (headerTitle != null && headerTitle != '')
            Container(
              height: 60.h,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.h,
                    color: Colours.dividerColor,
                  ),
                ),
              ),
              child: Text(
                headerTitle!,
                style: TextStyle(
                  fontSize: Dimens.fontSp18,
                  color: Colours.fontColor2,
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(left: Dimens.gapWDp24),
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
