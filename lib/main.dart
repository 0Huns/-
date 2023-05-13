import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:lottie/lottie.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:boxicons/boxicons.dart';
import 'package:iconforest_teenyicons/teenyicons.dart';
import 'themedata.dart';
import 'soundsetpage.dart';
import 'barcodepage.dart';

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
            title: 'Flutter Demo',
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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  FlutterTts flutterTts = FlutterTts();
  late AnimationController _qrController;
  late AnimationController _imageController;
  late AnimationController _soundController;

  @override
  void initState() {
    super.initState();

    _qrController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _imageController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _soundController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _qrController.dispose();
    _imageController.dispose();
    _soundController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: MyApp.themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return Scaffold(
              appBar: AppBar(
<<<<<<< HEAD
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
=======
                title: const Text('CureEYE DEMO'),
>>>>>>> 7abe508397d212ba0a8e02505bcb86066636a503
                centerTitle: true,
                // backgroundColor: null,
                elevation: 0,
              ),
<<<<<<< HEAD
              body: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: MyApp.themeNotifier.value == ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                      width: 5.0,
                    ),
                  ),
                  child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                      padding: const EdgeInsets.only(
                          bottom: 0, left: 15, top: 100, right: 15),
                      children: [
                        InkWell(
                          onTap: () async {
                            await flutterTts.speak('포장지 인식');
                            _qrController.reset();
                            _qrController.forward();
                          },
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BarcodePage()),
                            );
                          },
                          // highlightColor: Colors.Blue,
                          hoverColor: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: MyApp.themeNotifier.value ==
                                              ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                      width: 4.0),
                                  borderRadius: BorderRadius.circular(100)),
                              padding: const EdgeInsets.all(5.0),
                              child:
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? Transform.scale(
                                          scale: 1,
                                          child: Lottie.asset(Icons8.qr_code,
                                              controller: _qrController))
                                      : const Icon(
                                          BootstrapIcons.qr_code_scan,
                                          size: 100,
                                        )),
                        ),
                        InkWell(
                          onTap: () async {
                            await flutterTts.speak('알약 인식');
                            _imageController.reset();
                            _imageController.forward();
                          },
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BarcodePage()),
                            );
                          },
                          // highlightColor: Colors.blue,
                          hoverColor: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                    width: 4.0),
                                borderRadius: BorderRadius.circular(100)),
                            padding: const EdgeInsets.all(5.0),
                            child: MyApp.themeNotifier.value == ThemeMode.light
                                ? Transform.scale(
                                    scale: 1,
                                    child: Lottie.asset(
                                        Icons8.portrait_mode_scanning,
                                        controller: _imageController))
                                : const Icon(Boxicons.bx_scan, size: 100),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await flutterTts.speak('소리 설정');
                            _soundController.reset();
                            _soundController.forward();
                          },
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SoundsetPage()),
                            );
                          },
                          // highlightColor: Colors.blue,
                          hoverColor: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(
                              100), // 탭할 때 버튼 주변에 파란색 원형 애니메이션 생성
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                    width: 4.0),
                                borderRadius: BorderRadius.circular(100)),
                            padding: const EdgeInsets.all(5.0),
                            child: (MyApp.themeNotifier.value == ThemeMode.light
                                ? Transform.scale(
                                    scale: 1,
                                    child: Lottie.asset(Icons8.adjust,
                                        controller: _soundController))
                                : Transform.scale(
                                    scale: 0.6,
                                    child: const Teenyicons(
                                      Teenyicons.adjust_vertical_outline,
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await flutterTts.speak('화면 설정');
                          },
                          onDoubleTap: () {
                            MyApp.themeNotifier.value =
                                MyApp.themeNotifier.value == ThemeMode.light
                                    ? ThemeMode.dark
                                    : ThemeMode.light;
                          },
                          // highlightColor: Colors.blue,
                          hoverColor: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(
                              100), // 탭할 때 버튼 주변에 파란색 원형 애니메이션 생성
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MyApp.themeNotifier.value ==
                                            ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                    width: 4.0),
                                borderRadius: BorderRadius.circular(100)),
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              MyApp.themeNotifier.value == ThemeMode.light
                                  ? Icons.dark_mode
                                  : Icons.light_mode,
                              size: 140,
                            ),
                          ),
                        )
                      ])));
=======
              body: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.only(
                      bottom: 0, left: 15, top: 100, right: 15),
                  children: [
                    InkWell(
                      onTap: () async {
                        await flutterTts.speak('포장지 인식');
                        _qrController.reset();
                        _qrController.forward();
                      },
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BarcodePage()),
                        );
                      },
                      // highlightColor: Colors.Blue,
                      hoverColor: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: MyApp.themeNotifier.value ==
                                          ThemeMode.light
                                      ? Colors.black
                                      : Colors.white,
                                  width: 3.0),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(5.0),
                          child: Transform.scale(
                              scale: 1.7,
                              child:
                                  MyApp.themeNotifier.value == ThemeMode.light
                                      ? Lottie.asset(Icons8.qr_code,
                                          controller: _qrController)
                                      : const Icon(
                                          BootstrapIcons.qr_code_scan,
                                          size: 50,
                                        ))),
                    ),
                    InkWell(
                      onTap: () async {
                        await flutterTts.speak('알약 인식');
                        _imageController.reset();
                        _imageController.forward();
                      },
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BarcodePage()),
                        );
                      },
                      // highlightColor: Colors.blue,
                      hoverColor: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.all(5.0),
                        child: Transform.scale(
                            scale: 1.7,
                            child: MyApp.themeNotifier.value == ThemeMode.light
                                ? Lottie.asset(Icons8.portrait_mode_scanning,
                                    controller: _imageController)
                                : const Icon(Boxicons.bx_scan, size: 60)),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await flutterTts.speak('소리 설정');
                        _soundController.reset();
                        _soundController.forward();
                      },
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SoundsetPage()),
                        );
                      },
                      // highlightColor: Colors.blue,
                      hoverColor: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(
                          100), // 탭할 때 버튼 주변에 파란색 원형 애니메이션 생성
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.all(5.0),
                        child: (MyApp.themeNotifier.value == ThemeMode.light
                            ? Transform.scale(
                                scale: 1.7,
                                child: Lottie.asset(Icons8.adjust,
                                    controller: _soundController))
                            : Transform.scale(
                                scale: 0.4,
                                child: const Teenyicons(
                                  Teenyicons.adjust_vertical_outline,
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await flutterTts.speak('화면 설정');
                      },
                      onDoubleTap: () {
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      },
                      // highlightColor: Colors.blue,
                      hoverColor: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(
                          100), // 탭할 때 버튼 주변에 파란색 원형 애니메이션 생성
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    MyApp.themeNotifier.value == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? Icons.dark_mode
                              : Icons.light_mode,
                          size: 140,
                        ),
                      ),
                    )
                  ]));
>>>>>>> 7abe508397d212ba0a8e02505bcb86066636a503
        });
  }
}
