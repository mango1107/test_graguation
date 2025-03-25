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
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back), // 這裡是返回按鈕
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/proflie'); // 跳轉到 LoginPage
      //     },
      //   ),
      // ),
        //左上角按鈕(leading)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
    //這裡使用pushNamed 前往ClipPage
    Navigator.pushNamed(context, '/clip');

          },
        ),
    // 一般首頁不會放「返回箭頭」，
    // 這裡可以放一個 IconButton 來「前往」ProfilePage，
    // 但圖示就可以改成其他，例如 account_circle。
    actions: [
      IconButton(
    icon:const Icon(Icons.account_circle),
    onPressed: (){
      Navigator.pushNamed(context, '/profile');
    },
    ),
    ],
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
            // 修改成點擊後跳轉到 Editpage
            // ScaffoldMessenger.of(context).showSnackBar(
            //   const SnackBar(content: Text('新增全新項目')),
            // );
            Navigator.pushNamed(context, '/edit');
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
