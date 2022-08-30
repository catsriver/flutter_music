import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './styles/styles.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(540, 1200), // 一加8T
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MaterialApp(
          title: '网易云音乐',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colours.secondaryBgColor,
              foregroundColor: Colours.fontColor1,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 0,
              selectedItemColor: Colours.accentColor,
              unselectedItemColor: Colours.fontColor3,
              selectedLabelStyle: TextStyle(
                fontSize: Dimens.fontSp14,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: Dimens.fontSp14,
              ),
            ),
            scaffoldBackgroundColor: Colours.secondaryBgColor,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: const Text('网易云音乐'),
            ),
          ),
        );
      },
    );
  }
}
