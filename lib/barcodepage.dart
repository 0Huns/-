import 'package:flutter/material.dart';
import 'main.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

//바코드 인식 기능 페이지
class BarcodePage extends StatefulWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  String result = '';

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
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var res = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SimpleBarcodeScannerPage(),
                          ));
                      setState(() {
                        if (res is String) {
                          result = res;
                        }
                      });
                    },
                    child: const Text('Camera'),
                  ),
                  Text('Barcode Result: $result'),
                ],
              ),
            ),
          );
        });
  }
}
