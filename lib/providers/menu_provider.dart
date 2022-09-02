import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/menu.dart';

class MenusNotifier extends StateNotifier<List<Menu>> {
  MenusNotifier()
      : super([
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
          const Menu(
            iconUrl:
                'http://p1.music.126.net/4DpSgAVpJny4Ewf-Xw_WQQ==/109951163986641971.jpg',
            name: '每日推荐',
            url: '',
          ),
        ]);
}

final menuProvider =
    StateNotifierProvider<MenusNotifier, List<Menu>>((ref) => MenusNotifier());
