import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
import 'quiz_page.dart';
import 'select_quiz.dart';

class LevelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(left: 20),
            height: 80,
            width: double.infinity,
            color: Colors.transparent,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('戻る'),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold, //フォントサイズ
                ),
                onPrimary: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //ボタン
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectQuiz(),
                      ),
                    );
                  },
                  child: Text('レベル１'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(
                      fontSize: 30, //フォントサイズ
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectQuiz(),
                      ),
                    );
                  },
                  child: Text('レベル2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(
                      fontSize: 30, //フォントサイズ
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
