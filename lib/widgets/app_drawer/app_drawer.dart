import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/app_drawer/widgets/list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/styles.dart';
import '../common/rounded_text_button.dart';
import '../common/svg_icon.dart';
import './widgets/header.dart';
import './widgets/body.dart';
import './widgets/list_container.dart';

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
              onTrailingPress: () {
                print('点击扫一扫');
              },
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

                // 快捷入口
                ListContainer(
                  children: [
                    ListItem(
                      label: '我的消息',
                      icon: SvgIcons.mail,
                      bottom: true,
                      press: () {},
                    ),
                    ListItem(
                      label: '云贝中心',
                      icon: SvgIcons.archor,
                      bottom: true,
                      press: () {},
                    ),
                    ListItem(
                      label: '创作者中心',
                      icon: SvgIcons.bulb,
                      press: () {},
                    ),
                  ],
                ),

                // 音乐服务
                ListContainer(
                  headerTitle: '音乐服务',
                  children: [
                    ListItem(
                      label: '云村有票',
                      icon: SvgIcons.bookmarks,
                      press: () {},
                    ),
                    ListItem(
                      label: '商城',
                      icon: SvgIcons.shoppingCart,
                      press: () {},
                    ),
                    ListItem(
                      label: '多多西西口袋',
                      icon: SvgIcons.ghost,
                      press: () {},
                    ),
                    ListItem(
                      label: 'Beat交易平台',
                      icon: SvgIcons.activity,
                      press: () {},
                    ),
                    ListItem(
                      label: '游戏专区',
                      icon: SvgIcons.brandDiscord,
                      press: () {},
                    ),
                    ListItem(
                      label: '口袋彩铃',
                      icon: SvgIcons.bellRinging2,
                      imgUrl:
                          'https://c-ssl.dtstatic.com/uploads/item/201304/24/20130424222243_jrBCs.thumb.400_0.jpeg_webp',
                      press: () {},
                    ),
                  ],
                ),

                // 其他
                ListContainer(
                  headerTitle: '其他',
                  children: [
                    ListItem(
                      label: '设置',
                      icon: SvgIcons.settings,
                      trailing: false,
                      kswitch: true,
                      imgUrl:
                          'https://c-ssl.dtstatic.com/uploads/item/201304/24/20130424222243_jrBCs.thumb.400_0.jpeg_webp',
                      press: () {},
                    ),
                    ListItem(
                      label: '深色模式',
                      icon: SvgIcons.moon,
                      press: () {},
                    ),
                    ListItem(
                      label: '定时关闭',
                      icon: SvgIcons.clock,
                      press: () {},
                    ),
                    ListItem(
                      label: '个性装扮',
                      icon: SvgIcons.shirt,
                      press: () {},
                    ),
                    ListItem(
                      label: '边听边存',
                      icon: SvgIcons.headphones,
                      press: () {},
                    ),
                    ListItem(
                      label: '在线听歌免流量',
                      icon: SvgIcons.deviceDesktopAnalytics,
                      press: () {},
                    ),
                    ListItem(
                      label: '音乐黑名单',
                      icon: SvgIcons.ban,
                      press: () {},
                    ),
                    ListItem(
                      label: '青少年模式',
                      icon: SvgIcons.shieldCheck,
                      press: () {},
                    ),
                    ListItem(
                      label: '音乐闹钟',
                      icon: SvgIcons.alarm,
                      press: () {},
                    ),
                  ],
                ),

                // 用户相关
                ListContainer(
                  children: [
                    ListItem(
                      label: '我的订单',
                      icon: SvgIcons.receipt,
                      press: () {},
                    ),
                    ListItem(
                      label: '优惠券',
                      icon: SvgIcons.ticket,
                      press: () {},
                    ),
                    ListItem(
                      label: '我的客服',
                      icon: SvgIcons.headset,
                      press: () {},
                    ),
                    ListItem(
                      label: '分享网易云音乐',
                      icon: SvgIcons.share,
                      press: () {},
                    ),
                    ListItem(
                      label: '个人信息收集与使用清单',
                      icon: SvgIcons.certificate,
                      press: () {},
                    ),
                    ListItem(
                      label: '个人信息第三方共享清单',
                      icon: SvgIcons.brandUbuntu,
                      press: () {},
                    ),
                    ListItem(
                      label: '个人信息与隐私保护',
                      icon: SvgIcons.shieldLock,
                      press: () {},
                    ),
                    ListItem(
                      label: '关于',
                      icon: SvgIcons.alertCircle,
                      press: () {},
                    ),
                  ],
                ),

                // 退出登陆/关闭
                RoundedTextButton(
                  text: '退出登陆/关闭',
                  press: () {
                    print('退出登陆/关闭');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
