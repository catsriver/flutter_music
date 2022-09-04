import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/menu.dart';

class MenusNotifier extends StateNotifier<List<Menu>> {
  MenusNotifier() : super([]);

  Future<void> fetchAndSetMenus() async {
    // const url = 'http://47.108.129.252:3000/homepage/dragon/ball';
    const url =
        'https://flutter-music-catsriver-default-rtdb.firebaseio.com/menus.json';

    try {
      final res = await Dio().get(url);

      final extractedData = res.data['data'];
      final List<Menu> loadedMenus = [];

      for (var menu in extractedData) {
        loadedMenus.add(Menu.fromJson(menu));
      }

      state = loadedMenus;
    } catch (err) {
      print(err);
    }
  }
}

final menuProvider =
    StateNotifierProvider<MenusNotifier, List<Menu>>((ref) => MenusNotifier());
