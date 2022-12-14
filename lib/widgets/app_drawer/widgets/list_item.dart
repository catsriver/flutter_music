import 'package:flutter/material.dart';
import 'package:flutter_music/widgets/common/svg_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../styles/styles.dart';

class ListItem extends StatefulWidget {
  const ListItem({
    this.bottom = false,
    required this.label,
    required this.icon,
    required this.press,
    this.trailing = true,
    this.kswitch = false,
    this.imgUrl,
    this.desc,
    this.baged,
    Key? key,
  }) : super(key: key);

  final bool bottom;
  final String label;
  final SvgIconData icon;
  final VoidCallback press;
  final bool trailing;
  final bool kswitch;
  final String? imgUrl;
  final String? desc;
  final int? baged;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _switchValue = false;

  void _onSwitchChanged(value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: const Color(0xFFD2D2D2),
        onTap: widget.press,
        child: Row(
          children: [
            SizedBox(width: Dimens.gapWDp24),
            Expanded(
              child: Container(
                height: 75.h,
                decoration: BoxDecoration(
                  border: widget.bottom
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
                        SvgIcon(icon: widget.icon),
                        SizedBox(width: Dimens.gapWDp14),
                        Text(
                          widget.label,
                          style: TextStyle(
                            fontSize: Dimens.fontSp22,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: Dimens.gapWDp30),

                    // middle
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // ??????
                          if (widget.baged != null && widget.baged! > 0)
                            Container(
                              width: 22.w,
                              height: 22.w,
                              decoration: BoxDecoration(
                                color: Colours.accentColor,
                                borderRadius: BorderRadius.circular(22.w),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '${widget.baged}',
                                style: TextStyle(
                                  fontSize: Dimens.fontSp14,
                                  color: Colours.mainBgColor,
                                ),
                              ),
                            ),

                          // ??????
                          if (widget.desc != null && widget.desc != '')
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  widget.desc!,
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp16,
                                    color: Colours.fontColor2,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),

                          // ??????
                          if (widget.imgUrl != null && widget.imgUrl != '')
                            Container(
                              width: 35.w,
                              height: 35.h,
                              margin: EdgeInsets.only(left: Dimens.gapWDp14),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(widget.imgUrl!),
                              ),
                            ),

                          // ??????
                          if (widget.kswitch)
                            Switch(
                              activeColor: const Color(0xFFF93B38),
                              value: _switchValue,
                              onChanged: _onSwitchChanged,
                            ),
                        ],
                      ),
                    ),

                    if (!widget.kswitch) SizedBox(width: Dimens.gapWDp14),

                    // trailing
                    if (widget.trailing)
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
