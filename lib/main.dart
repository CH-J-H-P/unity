import 'package:flutter/material.dart';

// firebase DB를 사용하기 위한 import
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'MainPage.dart'; // 처음 들어온 뒤의 화면

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Unity());
}

class Unity extends StatelessWidget {
  const Unity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(), // 메인 페이지를 불러온다
    );
  }
}
/*처음 들어올때는 메인 페이지가 아닌 로그인 페이지로 들어오고 로그인에 성공하면 
  메인 페이지로 들어오게 된다. 다만 아직 DB를 구축하지 못한 관계로
  우선은 메인 페이지로 들어오게 처리하였다
  추후 DB를 구축한다면 변경해야한다 */
