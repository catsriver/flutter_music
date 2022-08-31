import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../styles/styles.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    this.bottom = false,
    required this.label,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final bool? bottom;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      decoration: BoxDecoration(
        border: (bottom != null && bottom == true)
            ? Border(
                bottom: BorderSide(
                  width: 1.h,
                  color: const Color(0xFFF4F4F4),
                ),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // leading
          Row(
            children: [
              FaIcon(icon),
              SizedBox(width: Dimens.gapWDp14),
              Text(
                label,
                style: TextStyle(
                  fontSize: Dimens.fontSp22,
                ),
              ),
            ],
          ),

          SizedBox(width: Dimens.gapWDp30),

          // middle
          Expanded(
            child: Container(),
          ),

          // trailing
          FaIcon(
            FontAwesomeIcons.angleRight,
            color: Colours.fontColor3,
            size: Dimens.fontSp20,
          ),

          SizedBox(width: Dimens.gapWDp24),
        ],
      ),
    );
  }
}
