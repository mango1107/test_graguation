import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  const ClipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 設定背景顏色
      appBar: AppBar(
        title: Text(
          "Auto Clipping\nVideo App",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
            shadows: [
              Shadow(
                blurRadius: 3.0,
                color: Colors.grey.shade400, // 模擬文字陰影
                offset: const Offset(2, 2),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, // 移除陰影
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Auto Edit 按鈕
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // TODO: Auto Edit 功能
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300], // 淺灰色
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.content_cut, size: 28),
              label: const Text("Auto Edit", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ),

          const SizedBox(height: 40),

          // Highlight Editing 標題
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Highlight Editing:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // 影片編輯區塊
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // 影片縮圖
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // 灰色背景
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const SizedBox(width: 10),

                // 時間與大小資訊
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2:23 | 50MB", style: TextStyle(fontSize: 14)),
                  ],
                ),

                const Spacer(),

                // 更多選項按鈕
                IconButton(
                  onPressed: () {
                    // TODO: 更多功能
                  },
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),

          const Spacer(),

          // 底部 3 個圓形按鈕
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 左側 編輯按鈕
                _buildCircularButton(icon: Icons.edit, onPressed: () {
                  // TODO: 編輯功能
                }),

                const SizedBox(width: 30),

                // 中間 剪刀按鈕（主要功能）
                _buildCircularButton(icon: Icons.content_cut, size: 70, onPressed: () {
                  // TODO: 剪輯功能
                }),

                const SizedBox(width: 30),

                // 右側 個人按鈕
                _buildCircularButton(icon: Icons.person, onPressed: () {
                  // TODO: 個人設定
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// **圓形按鈕元件**
  Widget _buildCircularButton({
    required IconData icon,
    double size = 60, // 預設按鈕大小
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: size,
      height: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 0,
        shape: const CircleBorder(),
        child: Icon(icon, size: 30),
      ),
    );
  }
}
