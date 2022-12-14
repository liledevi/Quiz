import 'package:flutter/material.dart';
import 'package:quiz/main.dart';
import 'view/quiz_page.dart';
import 'level_select.dart';

class SelectQuiz extends StatelessWidget {
  SelectQuiz({Key? key}) : super(key: key);
  late List<Map> quizList;

  //CSVから問題リストを作成
  Future<void> goToQuizApp(BuildContext context) async {
    quizList = shuffle(await getCsvData('assets/quiz_1.csv'));
    for (Map row in quizList) {
      debugPrint(row["question"]);
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QuizPage(quizList)));
  }

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
              child: Text('戻る'),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold, //フォントサイズ
                ),
                onPrimary: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
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
                    //画面遷移
                    goToQuizApp(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => QuizPage(),
                    //   ),
                    // );
                  },
                  child: Text('1-1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
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
                        builder: (context) => QuizPage(),
                      ),
                    );
                  },
                  child: Text('1-2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
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
