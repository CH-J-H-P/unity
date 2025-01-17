import 'package:flutter/material.dart';

// 하단 네비게이터로 접속 가능한 페이지들들
import 'BottomWidget/Home.dart'; // 홈 화면
import 'BottomWidget/MyActivity.dart'; // 내가 참가중인 활동
import 'BottomWidget/MyPage.dart'; // 마이페이지

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // 각 탭에서 보여줄 페이지를 담은 리스트
  final List<Widget> _pages = [
    const HomePage(),
    const MyActivity(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    //ui를 생성하는 메서드
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unity'), // 어플 로고 하나 만들어서 박을 예정 + 광고 들어갈 자리 만들기
      ),
      body: IndexedStack(
        // 여러 위젯 중 하나만 표시되도록 관리하는 위젯
        index: _currentIndex, // 현재 선택된 페이지의 인덱스
        children: _pages, // 표시할 페이지들의 리스트트
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // 현재 선택된 탭의 인덱스
        onTap: (index) {
          // 탭을 눌렀을 때 호출되는 콜백 함수
          setState(() {
            // 상태를 변경하고 화면을 다시 그리도록 하는 메서드
            _currentIndex = index;
          });
        },
        items: const [
          // 하단 네비게이터에 표시될 아이템들
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: '나의 활동',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
