import 'package:flutter/material.dart';
import 'themedata.dart';
import 'historypage.dart';
import 'searchpage.dart';
import 'communitypage.dart';
import 'mainpage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: dark,
            theme: light,
            themeMode: currentMode,
            home: const HomePage(),
          );
        });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  final _screens = [
    const SearchPage(),
    const HistoryPage(),
    const MainPage(),
    const CommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo4.png',
                      height: 50,
                    ),
                    const SizedBox(width: 20), // 이미지와 텍스트 사이 간격
                    const Text(
                      'CURE EYE',
                    ),
                  ],
                ),
                centerTitle: true,
                elevation: 0,
              ),
              body: _screens[_selectedIndex], // 선택된 화면 표시
              bottomNavigationBar: Semantics(
                label: '화면 이동 하단 바',
                value: 'Tab $_selectedIndex',
                child: ConvexAppBar(
                  items: [
                    const TabItem(
                        icon: Icons.local_hospital_outlined, title: '약품 검색'),
                    const TabItem(icon: Icons.manage_search, title: '검색 기록'),
                    const TabItem(
                        icon: Icons.remove_red_eye_outlined, title: 'CURE EYE'),
                    const TabItem(
                        icon: Icons.question_answer_outlined, title: '커뮤니티'),
                    TabItem(
                        icon: MyApp.themeNotifier.value == ThemeMode.light
                            ? Icons.dark_mode
                            : Icons.light_mode,
                        title: '다크모드')
                  ],
                  initialActiveIndex: 2,
                  backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.white
                      : Colors.black,
                  activeColor: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.grey,
                  onTap: (int index) {
                    setState(() {
                      if (index == 4) {
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      } else {
                        _selectedIndex = index;
                      }
                    });
                  },
                ),
              ));
        });
  }
}
