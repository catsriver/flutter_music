import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/common/search_box.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        middle: SearchBox(
          title: '天外来物',
          subTitle: '薛之谦',
          press: () {},
        ),
        trailing: IconButton(
          icon: const FaIcon(FontAwesomeIcons.microphoneLines),
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text('发现'),
      ),
    );
  }
}
