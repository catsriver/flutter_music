import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
    required this.imgUrl,
    required this.typeTitle,
    required this.titleBgColor,
  }) : super(key: key);

  final String imgUrl;
  final String typeTitle;
  final Color titleBgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          imgUrl,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(Dimens.gapWDp10),
            decoration: BoxDecoration(
              color: titleBgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimens.radiusH24 / 2),
                bottomRight: Radius.circular(Dimens.radiusH24 / 2),
              ),
            ),
            child: Text(
              typeTitle,
              style: TextStyle(
                fontSize: Dimens.fontSp16,
                color: Colours.fontColorWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
