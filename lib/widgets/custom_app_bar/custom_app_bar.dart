import 'package:flutter/material.dart';
import 'package:flutter_music/util/keys.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.leading,
    required this.middle,
    required this.trailing,
  }) : super(key: key);

  final Widget? leading;
  final Widget middle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.bars),
            onPressed: () {
              homeScaffoldKey.currentState!.openDrawer();
            },
          ),
      titleSpacing: 0,
      title: middle,
      actions: [trailing],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
