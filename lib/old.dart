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
            child: Text('リタイア'),
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
          child: Text(
            '問題',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 4.0,
            ),
          ),
        ),
        //問題文
        Container(
          padding: const EdgeInsets.all(16),
          child: Text(
            'aaaaaaaaaaaaaaaaaaaa',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              // fontWeight: FontWeight.bold,
              letterSpacing: 4.0,
            ),
          ),
        ),
        //選択肢
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
                      builder: (context) => QuizPage(),
                    ),
                  );
                },
                child: Text('1.選択肢1'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
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
                child: Text('2.選択肢2'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
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
