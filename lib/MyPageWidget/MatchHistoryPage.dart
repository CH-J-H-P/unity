import 'package:flutter/material.dart';

class MatchHistoryPage extends StatelessWidget {
  const MatchHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('참여했던 경기 목록'),
      ),
      body: Center(
        child: const Text('참여했던 경기 목록 화면입니다.'),
      ),
    );
  }
}
