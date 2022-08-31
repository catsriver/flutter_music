import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/common/svg_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../styles/styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.avatarUrl,
    required this.userName,
    required this.onLeadingPress,
    required this.onTrailingPress,
  }) : super(key: key);

  final String avatarUrl;
  final String userName;
  final VoidCallback onLeadingPress;
  final VoidCallback onTrailingPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: Dimens.gapWDp24,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onLeadingPress,
            child: Row(
              children: [
                SizedBox(
                  width: 40.w,
                  height: 40.w,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                ),
                SizedBox(width: Dimens.gapWDp5),
                Text(
                  userName,
                  style: TextStyle(
                    fontSize: Dimens.fontSp18,
                    color: Colours.fontColor1,
                  ),
                ),
                SizedBox(width: Dimens.gapWDp5),
                // FaIcon(
                //   FontAwesomeIcons.angleRight,
                //   size: Dimens.fontSp18,
                // ),
                SvgIcon(
                  icon: SvgIcons.chevronRight,
                  size: 18.w,
                ),
              ],
            ),
          ),
          // IconButton(
          //   padding: const EdgeInsets.all(0),
          //   alignment: Alignment.centerRight,
          //   icon: const FaIcon(FontAwesomeIcons.camera),
          //   onPressed: onTrailingPress,
          // ),
          GestureDetector(
            onTap: onTrailingPress,
            child: const SvgIcon(icon: SvgIcons.scan),
          ),
        ],
      ),
    );
  }
}
