import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/styles.dart';
import '../../../widgets/common/svg_icon.dart';

class BlockContainer extends StatelessWidget {
  const BlockContainer({
    Key? key,
    required this.blockName,
    required this.buttonName,
    this.top = false,
    required this.children,
  }) : super(key: key);

  final String blockName;
  final String buttonName;

  /// 是否隐藏topLeft、topRight圆角
  final bool top;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimens.gapHDp24,
      ),
      decoration: BoxDecoration(
        color: Colours.mainBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(top ? Dimens.radiusH24 / 2 : 0),
          topRight: Radius.circular(top ? Dimens.radiusH24 / 2 : 0),
          bottomLeft: Radius.circular(Dimens.radiusH24 / 2),
          bottomRight: Radius.circular(Dimens.radiusH24 / 2),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  blockName,
                  style: TextStyle(
                    fontSize: Dimens.fontSp26,
                    color: Colours.fontColor1,
                  ),
                ),
                Container(
                  width: 80.w,
                  height: 36.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.h),
                      side: const BorderSide(
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonName,
                        style: TextStyle(
                          fontSize: Dimens.fontSp18,
                          color: Colours.fontColor1,
                        ),
                      ),
                      SvgIcon(
                        icon: SvgIcons.chevronRight,
                        size: 14.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Dimens.gapHDp24),

          // ),
          Stack(
            children: [
              IgnorePointer(
                child: Opacity(
                  opacity: 0,
                  child: children.first,
                ),
              ),
              const SizedBox(width: double.infinity),
              Positioned.fill(
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimens.gapWDp24 / 2),
                  scrollDirection: Axis.horizontal,
                  children: children,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
