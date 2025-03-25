import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // const ProfilePage({Key? key}) : super(key: key);
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 你可自行決定要不要加 AppBar
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), //這裡是返回按鈕
          onPressed: () {
            // Navigator.pushNamed(context, '/');
            //這裡使用pop返回上一頁(HomePage)
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // 利用 Expanded + ListView 來放多個設定項目
          Expanded(
            child: ListView(
              children: [
                // 語言
                ListTile(
                  title: const Text('Language'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: 點擊後的動作
                  },
                ),
                const Divider(height: 1),

                // 意見回饋
                ListTile(
                  title: const Text('Feedback'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: 點擊後的動作
                  },
                ),
                const Divider(height: 1),

                // 條款 & 隱私政策
                ListTile(
                  title: const Text('Term & Policies'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: 點擊後的動作
                  },
                ),
                const Divider(height: 1),

                // 版本
                ListTile(
                  title: const Text('Version'),
                  trailing: const Text('1.0.0'),
                  onTap: () {
                    // TODO: 點擊後的動作
                  },
                ),
                const Divider(height: 1),

                // 登出
                ListTile(
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    // TODO: 登出動作
                  },
                ),
              ],
            ),
          ),

          // 底部圓形或圓角按鈕區域
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 左邊按鈕
                GestureDetector(
                  onTap: () {
                    // TODO: 點擊動作
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      const Text('Edit'),
                    ],
                  ),
                ),

                // 中間按鈕
                GestureDetector(
                  onTap: () {
                    // TODO: 點擊動作
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.person, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      const Text('Profile'),
                    ],
                  ),
                ),

                // 右邊按鈕
                GestureDetector(
                  onTap: () {
                    // TODO: 點擊動作
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.content_cut, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      const Text('Cut'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
