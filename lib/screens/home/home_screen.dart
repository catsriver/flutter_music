import 'package:flutter/material.dart';

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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            _controller.jumpToPage(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '发现',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '播客',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '云村',
              tooltip: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '我的',
              tooltip: '',
            ),
          ],
        ),
      ),
    );
  }
}
