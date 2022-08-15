import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage(this.quizList, {Key? key}) : super(key: key);
  List<Map> quizList;

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
}
