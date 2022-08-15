import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard),
          label: 'ランキング',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'マイページ',
        ),
      ],
      // currentIndex: _selectIndex,
      selectedItemColor: Colors.red,
      // onTap: _onTapItem,
    );
  }
}
