import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환경설정'),
      ),
      body: Center(
        child: const Text('환경설정 화면입니다.'),
      ),
    );
  }
}
