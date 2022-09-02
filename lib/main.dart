import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './styles/styles.dart';
import './screens/home/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
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
            iconTheme: const IconThemeData(
              color: Colours.fontColor1,
            ),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colours.secondaryBgColor,
              foregroundColor: Colours.fontColor1,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              elevation: 0,
              backgroundColor: Colours.mainBgColor,
              selectedItemColor: Colours.accentColor,
              unselectedItemColor: Colours.fontColor3,
              selectedLabelStyle: TextStyle(
                fontSize: Dimens.fontSp14,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: Dimens.fontSp14,
              ),
              type: BottomNavigationBarType.fixed,
            ),
            scaffoldBackgroundColor: Colours.secondaryBgColor,

            // 去除水波纹
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
