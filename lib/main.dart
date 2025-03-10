import 'package:flutter/material.dart';
//import 'package:good_win1/page/video_editor.dart';
import 'page/home_page.dart';
//import 'page/login_page.dart';
import 'page/clip_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi Page App',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: '/',  // 讓首頁直接是 HomePage
      routes: {
        '/': (context) => const HomePage(),
        //'/login': (context) => const LoginPage(),  //暫時先不用，因為我們討論說只有一個客戶
        '/clip': (context) => const ClipPage(),
        //'/editor': (context) => const VideoEditor(videoPath: '',),
      },
    );
  }
}
