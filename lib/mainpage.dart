import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Flexible(
                    child: Lottie.asset('assets/animations/maindesign.json',
                        width: 250,
                        height: 250,
                        alignment: Alignment.topCenter),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    '의약품 검색을 위한 여러분의 새로운 눈이 되어줄 CURE EYE 입니다. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'MaplestoryFont',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Text(
                      '사용방법 \n\n "의약품 검색"을 누른 후 상황에 맞는 방법을 선택하여 의약품 인식 \n\n  "검색기록"으로 이전의 검색 이력을 언제든지 확인 \n\n "커뮤니티"를 통해 사용자들과 의약품 지식 공유 가능 \n\n "다크모드"로 최적화된 화면 스타일 제공 ',
                      semanticsLabel:
                          '사용방법 \n\n "의약품 검색"을 누른 후 상황에 맞는 방법을 선택하여 의약품 인식 \n\n  "검색기록"으로 이전의 검색 이력을 언제든지 확인 \n\n "커뮤니티"를 통해 사용자들과 의약품 지식 공유 가능 \n\n "다크모드"로 최적화된 화면 스타일 제공 ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'MaplestoryFont',
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
