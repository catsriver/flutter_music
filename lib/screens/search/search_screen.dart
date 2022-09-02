import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/providers/banner_provider.dart';
import 'package:flutter_music/screens/search/widgets/banner_item.dart';
import 'package:flutter_music/styles/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/common/search_box.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  void initState() {
    ref.read(bannerProvider.notifier).fetchAndSetBanners();
    super.initState();
  }

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
          Consumer(
            builder: (_, ref, __) {
              final banners = ref.watch(bannerProvider);
              return Container(
                height: 190.h,
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
              );
            },
          ),
        ],
      ),
    );
  }
}
