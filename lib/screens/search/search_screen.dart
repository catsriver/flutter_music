import 'dart:convert';

import 'package:card_swiper/card_swiper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/providers/banner_provider.dart';
import 'package:flutter_music/providers/menu_provider.dart';
import 'package:flutter_music/screens/search/widgets/banner_item.dart';
import 'package:flutter_music/styles/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/common/search_box.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import './widgets/menu_item.dart' as item;

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  void initState() {
    ref.read(bannerProvider.notifier).fetchAndSetBanners();
    ref.read(menuProvider.notifier).fetchAndSetMenus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final menus = ref.watch(menuProvider);

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
        children: [
          // Banner
          Consumer(
            builder: (_, ref, __) {
              final banners = ref.watch(bannerProvider);
              return Container(
                padding: EdgeInsets.symmetric(horizontal: Dimens.gapWDp24),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF6F9F8), Colours.mainBgColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  height: 190.h,
                  margin: EdgeInsets.symmetric(vertical: Dimens.gapHDp24 / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.radiusH24 / 2),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Swiper(
                    autoplay: true,
                    pagination: SwiperPagination(
                      margin: EdgeInsets.only(bottom: Dimens.gapHDp10),
                      builder: DotSwiperPaginationBuilder(
                        size: 10.h,
                        activeSize: 10.h,
                        color: const Color(0xFFCCCCCC),
                        activeColor: const Color(0xFFFCFCFC),
                      ),
                    ),
                    itemCount: banners.length,
                    itemBuilder: (_, index) => BannerItem(
                      imgUrl: banners[index].imgUrl,
                      typeTitle: banners[index].titleType,
                      titleBgColor: banners[index].titleBgColor,
                    ),
                  ),
                ),
              );
            },
          ),

          // 圆形图标列表
          Container(
            padding: EdgeInsets.only(
              top: Dimens.gapHDp14,
              bottom: Dimens.gapHDp30,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFE5E5E5)),
              ),
              color: Colours.mainBgColor,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: menus
                    .map(
                      (menu) => item.MenuItem(
                        iconUrl: menu.iconUrl,
                        name: menu.name,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        const url =
            'https://flutter-music-catsriver-default-rtdb.firebaseio.com/menus.json';

        Dio().post(
          url,
          data: json.encode({
            'id': 19000,
            'name': '歌房',
            'iconUrl':
                'http://p1.music.126.net/JrloH3aCTYMLeXAYCMAc1g==/109951166989047614.jpg',
            'url': 'orpheus://nk/ktvroom/detail?needReturnHome=1&id=6931212',
          }),
        );
      }),
    );
  }
}
