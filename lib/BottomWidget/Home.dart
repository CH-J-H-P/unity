import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCategory = '축구/풋살'; // 기본값

  // 카테고리별 모집글 예시 데이터
  final Map<String, List<String>> recruitmentPosts = {
    '축구/풋살': ['축구/풋살 모집글 1', '축구/풋살 모집글 2'],
    '농구': ['농구 모집글 1', '농구 모집글 2'],
    '기타': ['기타 모집글 1', '기타 모집글 2'],
  };

  // 유저 게시물 (종목에 관계없이 모든 게시물)
  final List<String> userPosts = [
    '유저 게시물 1',
    '유저 게시물 2',
    '유저 게시물 3',
  ];

  // 베스트 게시물 (종목에 관계없이 모든 게시물)
  final List<String> bestPosts = [
    '베스트 게시물 1',
    '베스트 게시물 2',
    '베스트 게시물 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 첫 번째 영역: 카테고리 선택
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryButton(
                      '축구/풋살', _selectedCategory, _onCategoryChanged),
                  CategoryButton('농구', _selectedCategory, _onCategoryChanged),
                  CategoryButton('기타', _selectedCategory, _onCategoryChanged),
                ],
              ),
            ),

            // 두 번째 영역: 모집글 (선택된 카테고리에 따른 모집글)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('모집글',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...recruitmentPosts[_selectedCategory]!
                      .map((post) => ListTile(title: Text(post))),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // 전체 게시물 보기로 이동하는 로직
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllPostsPage()),
                    );
                  },
                  child: const Text('전체 게시물 보기'),
                ),
              ),
            ),

            // 세 번째 영역: 유저 게시물 (전체 게시물)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('유저 게시물',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...userPosts.map((post) => ListTile(title: Text(post))),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // 전체 게시물 보기로 이동하는 로직
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllPostsPage()),
                    );
                  },
                  child: const Text('전체 게시물 보기'),
                ),
              ),
            ),

            // 네 번째 영역: 베스트 게시물 (전체 게시물)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('베스트 게시물',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ...bestPosts.map((post) => ListTile(title: Text(post))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 카테고리 변경 함수
  void _onCategoryChanged(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }
}

// 카테고리 버튼 위젯
class CategoryButton extends StatelessWidget {
  final String category;
  final String selectedCategory;
  final Function(String) onCategoryChanged;

  const CategoryButton(
      this.category, this.selectedCategory, this.onCategoryChanged,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onCategoryChanged(category);
      },
      child: Text(
        category,
        style: TextStyle(
          fontWeight: selectedCategory == category
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      ),
    );
  }
}

class AllPostsPage extends StatelessWidget {
  const AllPostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('전체 게시물')),
      body: const Center(child: Text('전체 게시물 목록을 여기에 표시합니다.')),
    );
  }
}
