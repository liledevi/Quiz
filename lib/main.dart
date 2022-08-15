import 'package:flutter/material.dart';
import 'package:quiz/level_select.dart';
import 'footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'クイズアプリ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: const App(),
        bottomNavigationBar: Footer(),
      ),
      // home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 50),
            //イベントボタン
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => LevelSelect(),
            //       ),
            //     );
            //   },
            //   child: Text('スタート！'),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.blue,
            //     textStyle: TextStyle(
            //       fontSize: 40,
            //     ),
            //     //枠線!
            //     side: BorderSide(
            //       color: Colors.black,
            //       width: 3,
            //     ),
            //   ),
            // ),

            //テキストボタン
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(200, 50),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelect(),
                  ),
                );
              },
              child: const Text(
                'スタート！',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
