import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<EditPage> {
  bool _showControls = true; // 用來控制是否顯示控制列 (可做自動隱藏功能)

  // TODO: 如果要播放影片，可在此宣告 VideoPlayerController 等

  @override
  void initState() {
    super.initState();
    // TODO: 初始化 VideoPlayerController
  }

  @override
  void dispose() {
    // TODO: 釋放 VideoPlayerController
    super.dispose();
  }

  /// 切換顯示/隱藏控制列
  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 讓背景保持深色，影片更突出
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Video Preview'),
        centerTitle: true,
        backgroundColor: Colors.black87, // 半透明或純黑
        // leading: 自動生成返回箭頭 (如果不是根路由)
      ),
      body: GestureDetector(
        // 點擊畫面切換控制列的顯示
        onTap: _toggleControls,
        child: Stack(
          children: [
            // 影片顯示區 (以 AspectRatio 控制寬高比)
            Center(
              child: AspectRatio(
                aspectRatio: 9 / 16, // 依實際影片比例調整
                child: Container(
                  color: Colors.grey[900], // 影片載入前的底色或 placeholder
                  // TODO: 放置 VideoPlayer(widget.controller) 或其他影片元件
                  child: const Center(
                    child: Icon(
                      Icons.videocam,
                      color: Colors.white54,
                      size: 48,
                    ),
                  ),
                ),
              ),
            ),

            // 底部控制列 (Overlay)
            if (_showControls)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 左邊圓形按鈕
                      _buildCircleButton(
                        icon: Icons.settings,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Setting / Edit 動作')),
                          );
                        },
                      ),
                      const SizedBox(width: 24),

                      // 中間圓形按鈕 (播放/暫停 或剪輯功能)
                      _buildCircleButton(
                        icon: Icons.play_arrow,
                        size: 70,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Play / Pause 動作')),
                          );
                        },
                      ),
                      const SizedBox(width: 24),

                      // 右邊圓形按鈕
                      _buildCircleButton(
                        icon: Icons.save_alt,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('儲存或匯出動作')),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// 建立圓形按鈕的輔助函式
  Widget _buildCircleButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 60,
  }) {
    return SizedBox(
      width: size,
      height: size,
      child: FloatingActionButton(
        heroTag: icon.toString(), // 避免 Hero 動畫衝突
        backgroundColor: Colors.grey[800],
        onPressed: onPressed,
        child: Icon(icon, size: 30),
      ),
    );
  }
}
