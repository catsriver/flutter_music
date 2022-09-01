import 'package:flutter/material.dart';
import 'package:flutter_music/styles/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/common/search_box.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import './widgets/banner_item.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        middle: SearchBox(
          title: '天外来物',
          subTitle: '薛之谦',
          press: () {},
        ),
        trailing: IconButton(
          icon: const FaIcon(FontAwesomeIcons.microphoneLines),
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24),
        children: [
          // Banner
          Container(
            height: 190.h,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(Dimens.radiusH24 / 2),
            ),
            clipBehavior: Clip.hardEdge,
            child: const BannerItem(
              imgUrl:
                  'http://p1.music.126.net/5OlcZm8j5tCwo2MjtagGgg==/109951167834116990.jpg',
              typeTitle: '热歌推荐',
              titleBgColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
