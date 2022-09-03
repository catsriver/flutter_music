import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../styles/styles.dart';

class PlayListItem extends StatelessWidget {
  const PlayListItem({
    Key? key,
    required this.mainTitle,
    required this.imageUrl,
    required this.playCount,
  }) : super(key: key);

  final String mainTitle;
  final String imageUrl;

  /// 播放量
  final int playCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp14 / 2),
      width: 150.w,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned(
                top: -6.h,
                left: 12.h,
                right: 12.h,
                child: Container(
                  height: 132.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(Dimens.radiusH24),
                  ),
                ),
              ),

              // image
              Container(
                height: 150.h,
                margin: EdgeInsets.only(top: 6.h),
                clipBehavior: Clip.hardEdge,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.radiusH14),
                    side: const BorderSide(color: Colours.borderColor),
                  ),
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),

              // 播放量
              Positioned(
                top: 12.h,
                right: 6.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.gapWDp10,
                    vertical: Dimens.gapHDp5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(Dimens.radiusH24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.play,
                        size: 14.h,
                        color: Colours.fontColorWhite,
                      ),
                      Text(
                        '$playCount',
                        style: TextStyle(
                          fontSize: Dimens.fontSp16,
                          color: Colours.fontColorWhite,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimens.gapHDp10),

          // title
          Text(
            mainTitle,
            style: TextStyle(
              fontSize: Dimens.fontSp18,
              color: Colours.fontColor1,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
