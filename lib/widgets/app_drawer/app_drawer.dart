import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/styles.dart';
import './widgets/header.dart';

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
          ],
        ),
      ),
    );
  }
}
