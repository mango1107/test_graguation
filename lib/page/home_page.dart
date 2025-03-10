import 'package:flutter/material.dart';

//import '../components/tab_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // 這裡是返回按鈕
          onPressed: () {
            Navigator.pushNamed(context, '/clip'); // 跳轉到 LoginPage
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(bottom: 80), // 避免 FAB 遮擋最後一個項目
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey[800], // 深灰色背景
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Video Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'description',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.6),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.black),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('新增項目 #${index + 1}')),
                      );
                    },
                  ),
                ),
                //buildBottomTools(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10), // 調整此數值讓按鈕更低
        child: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('新增全新項目')),
            );
          },
          tooltip: 'Add',
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: const SizedBox(height: 60),
      ),
    );
  }
}
