import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/common/svg_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../styles/styles.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    this.bottom = false,
    required this.label,
    required this.icon,
    required this.press,
    Key? key,
  }) : super(key: key);

  final bool? bottom;
  final String label;
  final SvgIconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: const Color(0xFFD2D2D2),
        onTap: press,
        child: Row(
          children: [
            SizedBox(width: Dimens.gapWDp24),
            Expanded(
              child: Container(
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
                        SvgIcon(icon: icon),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
