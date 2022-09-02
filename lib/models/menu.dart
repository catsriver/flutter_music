import 'dart:convert';

Menu menuFromJson(String str) => Menu.fromJson(json.decode(str));

String menuToJson(Menu data) => json.encode(data.toJson());

class Menu {
  const Menu({
    required this.iconUrl,
    required this.name,
    required this.url,
  });

  final String iconUrl;
  final String name;
  final String url;

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        iconUrl: json["iconUrl"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "iconUrl": iconUrl,
        "name": name,
        "url": url,
      };
}
