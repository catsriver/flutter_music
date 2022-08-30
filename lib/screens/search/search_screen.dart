import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.bars),
          onPressed: () {},
        ),
        titleSpacing: 0,
        title: Container(
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
                '天外来物',
                style: TextStyle(
                  fontSize: Dimens.fontSp22,
                  color: Colours.fontColor2,
                ),
              ),
              SizedBox(width: Dimens.gapWDp5),
              Text(
                '薛之谦',
                style: TextStyle(
                  fontSize: Dimens.fontSp22,
                  color: Colours.fontColor3,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.microphoneLines),
          )
        ],
      ),
      body: const Center(
        child: Text('发现'),
      ),
    );
  }
}
