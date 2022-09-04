import 'dart:convert';

import 'package:flutter/material.dart';

Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));

String bannerToJson(Banner data) => json.encode(data.toJson());

class Banner {
  Banner({
    required this.imgUrl,
    required this.titleType,
    required this.titleColor,
  });

  final String imgUrl;
  final String titleType;
  final String titleColor;

  Color get titleBgColor {
    switch (titleColor) {
      case 'blue':
        return Colors.blue;
      default:
        return Colors.red;
    }
  }

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        imgUrl: json["pic"] ?? '',
        titleType: json["typeTitle"] ?? '',
        titleColor: json['titleColor'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "imgUrl": imgUrl,
        "titleType": titleType,
        "titleBgColor": titleBgColor,
      };
}
