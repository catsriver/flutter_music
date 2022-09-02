import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/banner.dart';

class BannersNotifier extends StateNotifier<List<Banner>> {
  BannersNotifier()
      : super(
          [
            Banner(
              imgUrl:
                  'http://p1.music.126.net/5OlcZm8j5tCwo2MjtagGgg==/109951167834116990.jpg',
              titleType: '热歌推荐',
              titleColor: 'red',
            ),
            Banner(
              imgUrl:
                  'http://p1.music.126.net/AzgvM59T4sFImItakJ9tcg==/109951167836666177.jpg',
              titleType: '新歌首发',
              titleColor: 'red',
            ),
            Banner(
              imgUrl:
                  'http://p1.music.126.net/2qqETBwgfB7rdE3V7pYiDw==/109951167836682836.jpg',
              titleType: '新歌首发',
              titleColor: 'red',
            ),
          ],
        );

  void addBanner(Banner banner) {
    state = [...state, banner];
  }
}

final bannerProvider = StateNotifierProvider<BannersNotifier, List<Banner>>(
  (ref) => BannersNotifier(),
);
