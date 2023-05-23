import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'main.dart';

//바코드 인식 기능 페이지
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.black, width: 3.0),
                    ),
                    color: const Color.fromARGB(255, 198, 229, 255),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        print(const Text('hi'));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200,
                              height: 200,
                              child: Lottie.asset('assets/animations/qr.json',
                                  width: 100, height: 100)),
                          Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                '바코드 인식',
                                semanticsLabel: '바코드 인식 선택',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'MaplestoryFont',
                                    fontSize: 23,
                                    fontWeight: FontWeight.normal),
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.black, width: 3.0),
                    ),
                    color: const Color.fromARGB(255, 198, 229, 255),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        print(const Text('bye'));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                              width: 200,
                              height: 200,
                              child: Lottie.asset(
                                  'assets/animations/image.json',
                                  width: 100,
                                  height: 100)),
                          Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                '이미지 인식',
                                semanticsLabel: '이미지 인식 선택',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'MaplestoryFont',
                                    fontSize: 23,
                                    fontWeight: FontWeight.normal),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
