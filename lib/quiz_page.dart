import 'package:flutter/material.dart';
import 'level_select.dart';

class QuizPage extends StatefulWidget {
  // QuizPage(this.quizList, {Key? key}) : super(key: key);
  // List<Map> quizList;

  @override
  State<QuizPage> createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  // late List<Map> quizList;
  int index = 0;
  int result = 0;
  bool isSelectNow = true;

  @override
  void initState() {
    // quizList = widget.quizList;
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        '問題',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 4.0,
        ),
      )),
    );
  }
}
