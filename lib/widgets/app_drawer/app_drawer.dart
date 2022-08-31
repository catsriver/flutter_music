import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/styles.dart';
import './widgets/header.dart';
import './widgets/body.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colours.mainBgColor,
      width: 454.w,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            Header(
              userName: 'catsriver',
              avatarUrl:
                  'https://c-ssl.dtstatic.com/uploads/blog/202208/31/20220831190228_48d1c.thumb.400_0.jpg',
              onLeadingPress: () {},
              onTrailingPress: () {},
            ),
            Body(
              children: [
                // 黑胶VIP
                Container(
                  height: 166.h,
                  margin: EdgeInsets.symmetric(vertical: Dimens.gapHDp24 / 2),
                  padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF242442), Color(0xFF404040)],
                    ),
                    borderRadius: BorderRadius.circular(Dimens.radiusH24),
                  ),
                  child: Column(
                    children: [
                      // top
                      Container(
                        height: 103.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: const Color(0xFF3D3D3D),
                              width: 1.h,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '续费黑胶VIP',
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp22,
                                    color: const Color(0xFFFEE5E3),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.h),
                                  child: SizedBox(
                                    width: 72.w,
                                    height: 12.h,
                                    child: const LinearProgressIndicator(
                                      value: 60 / 72,
                                      color: Color(0xFFF1F1F1),
                                      backgroundColor: Color(0xFF2A2A2A),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 96.w,
                                  height: 38.h,
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(38.h),
                                      side: BorderSide(
                                        width: 2.h,
                                        color: const Color(0xFF7F7E7E),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    '会员中心',
                                    style: TextStyle(
                                      fontSize: Dimens.fontSp18,
                                      color: const Color(0xFFCFC4C3),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 226.w,
                              child: Text(
                                '黑胶音乐｜青春不迷茫(巴拉巴拉巴拉巴拉',
                                style: TextStyle(
                                  fontSize: Dimens.fontSp18,
                                  color: Colours.fontColor2,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // bottom
                      SizedBox(
                        height: 63.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '受邀专享，黑胶VIP低至0.32元/天！',
                              style: TextStyle(
                                fontSize: Dimens.fontSp18,
                                color: Colours.fontColor2,
                              ),
                            ),
                            Container(
                              width: 34.w,
                              height: 34.w,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE34900),
                                borderRadius: BorderRadius.circular(4.h),
                              ),
                              child: Text(
                                '受邀专享',
                                style: TextStyle(
                                  fontSize: Dimens.fontSp12,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
