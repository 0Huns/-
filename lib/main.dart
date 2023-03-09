import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CureEYE DEMO'),
          centerTitle: true,
          elevation: 0,
        ),
        body: GridView.count(
            crossAxisCount: 2, // 1개 행에 항목 3개씩
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 1,
            padding:
                const EdgeInsets.only(bottom: 0, left: 15, top: 100, right: 15),
            children: [
              IconButton(
                  icon: Image.asset(
                    "assets/images/camera_icon.jpg",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    // color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    "assets/images/ocr.png",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    // color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    "assets/images/mic.jpg",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    // color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    "assets/images/setup.png",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    // color: Colors.green,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    "assets/images/camera_icon.jpg",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    "assets/images/camera_icon.jpg",
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.fill,
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  })
            ]));
  }
}

// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('CureEYE DEMO'),
//         ),
//         body: IconButton(
//           icon: Image.asset(
//             "assets/images/camera_icon2.jpg",
//             // width: 100,
//             // height: 1000,
//             fit: BoxFit.fill,
//           ),
//           padding: EdgeInsets.zero,
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const HomePage()),
//             );
//           },
//         ));
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CureEYE DEMO'),
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
                      builder: (context) => const SimpleBarcodeScannerPage(),
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
  }
}
