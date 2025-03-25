// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black, // 設定黑色背景
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(height: 50), // 避免貼頂
//           // 🔹 應用名稱
//           const Text(
//             "Auto Clipping\nVideo App",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 20),
//           // 🔹 App Logo
//           const Icon(
//             Icons.camera, // 你可以換成 App 圖標
//             size: 100,
//             color: Colors.white,
//           ),
//           const SizedBox(height: 40),
//
//           // 🔹 Line 登入按鈕
//           _buildLoginButton(
//             icon: Icons.message,
//             text: "Sign Up with Line",
//             color: Colors.green,
//             onPressed: () {
//               // TODO: Line 登入功能
//             },
//           ),
//           const SizedBox(height: 10),
//
//           // 🔹 Facebook 登入按鈕
//           _buildLoginButton(
//             icon: Icons.facebook,
//             text: "Sign Up with Facebook",
//             color: Colors.blue,
//             onPressed: () {
//               // TODO: Facebook 登入功能
//             },
//           ),
//           const SizedBox(height: 10),
//
//           // 🔹 Google 登入按鈕
//           _buildLoginButton(
//             icon: Icons.g_translate,
//             text: "Continue with Google",
//             color: Colors.white,
//             textColor: Colors.black,
//             onPressed: () {
//               // TODO: Google 登入功能
//             },
//           ),
//           const SizedBox(height: 20),
//
//           // 🔹 註冊提示
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Don't have an account? ",
//                 style: TextStyle(color: Colors.white),
//               ),
//               TextButton(
//                 onPressed: () {
//                   // TODO: 導向註冊頁
//                 },
//                 child: const Text(
//                   "Sign Up",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   /// 🔹 建立登入按鈕
//   Widget _buildLoginButton({
//     required IconData icon,
//     required String text,
//     required Color color,
//     Color textColor = Colors.white,
//     required VoidCallback onPressed,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30),
//       child: ElevatedButton.icon(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color, // 按鈕顏色
//           foregroundColor: textColor, // 文字顏色
//           minimumSize: const Size(double.infinity, 50), // 按鈕寬度
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30), // 圓角按鈕
//           ),
//         ),
//         icon: Icon(icon),
//         label: Text(text),
//         onPressed: onPressed,
//       ),
//     );
//   }
// }
