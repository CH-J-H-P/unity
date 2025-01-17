import 'package:flutter/material.dart';
// MyPageWidget 파일에 있음
import '../MyPageWidget/ProfilePage.dart'; // 프로필 페이지
import '../MyPageWidget/SettingPage.dart'; // 환경설정 페이지
import '../MyPageWidget/ChangePasswordPage.dart'; // 비밀번호 변경 페이지
import '../MyPageWidget/MatchHistoryPage.dart'; // 참여했던 경기 목록 페이지

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('마이페이지'),
      ),
      body: ListView(
        // 여러 항목을 스크롤 가능한 목록으로 배치하는 위젯
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('내 프로필'),
            onTap: () {
              // 클릭 시 이벤트
              Navigator.push(
                // 새 페이지로 이동하는 에니메이션을 재생
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfilePage()), // 페이지 이동동
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('환경설정'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('비밀번호 변경'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('비밀번호 찾기'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('참여했던 경기 목록'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MatchHistoryPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.density_medium),
            title: const Text('내가 쓴 글'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('로그아웃'),
            iconColor: Colors.red,
            textColor: Colors.red,
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete_forever),
            title: const Text('탈퇴'),
            iconColor: Colors.red,
            textColor: Colors.red,
            onTap: () {
              _showWithdrawalDialog(context);
            },
          ),
        ],
      ),
    );
  }

// 로그아웃 기능(로그아웃과 탈퇴 모두 껍데기만 구현함 실제 기능 구현 필요요)
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      // 팝업 창 표시
      context: context, // 현재 위젯이 어느 위치에 있는지 알려주는 정보
      builder: (context) {
        // 팝업의 내용을 정의
        return AlertDialog(
          // 설정한 팝업 창을 반환
          title: const Text('로그아웃'), // 팝업의 제목
          content: const Text('정말 로그아웃하시겠습니까?'), // 팝업의 본문 내용
          actions: [
            // 팝업의 하단에 표시되는 버튼 목록록
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('로그아웃 되었습니다.')),
                );
              },
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }

// 로그아웃 기능과 동일, 탈퇴에 맞게 일부 변경, 마찬가지로 실제 기능 구현 필요
  void _showWithdrawalDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('탈퇴'),
          content: const Text('정말로 탈퇴하시겠습니까? 이 작업은 되돌릴 수 없습니다.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('탈퇴 처리되었습니다.')),
                );
              },
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }
}
