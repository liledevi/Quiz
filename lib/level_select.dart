import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
import 'quiz_page.dart';
import 'level_select.dart';
import 'select_quiz.dart';

class LevelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
