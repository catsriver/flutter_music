import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/banner.dart';

class BannersNotifier extends StateNotifier<List<Banner>> {
  BannersNotifier() : super([]);

  void addBanner(Banner banner) {
    state = [...state, banner];
  }

  Future<void> fetchAndSetBanners() async {
    const url = 'http://47.108.129.252:3000/banner';

    try {
      final response = await Dio().get(url, queryParameters: {
        'type': 1,
      });
      final extractedData = response.data['banners'];
      final List<Banner> loadedBanners = [];

      for (var banner in extractedData) {
        loadedBanners.add(Banner.fromJson(banner));
      }

      state = loadedBanners;
    } catch (err) {
      rethrow;
    }
  }
}

final bannerProvider = StateNotifierProvider<BannersNotifier, List<Banner>>(
  (ref) => BannersNotifier(),
);
