import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../util/keys.dart';
import '../../widgets/app_drawer/app_drawer.dart';
import '../bodcast/bodcast_screen.dart';
import '../community/community_screen.dart';
import '../search/search_screen.dart';
import '../user/user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      body: PageView(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        children: const [
          SearchScreen(),
          BodcastScreen(),
          CommunityScreen(),
          UserScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compactDisc),
            label: '发现',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.radio),
            label: '播客',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bomb),
            label: '云村',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.music),
            label: '我的',
            tooltip: '',
          ),
        ],
      ),
      drawer: const AppDrawer(),
    );
  }
}
