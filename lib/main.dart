import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webviewApp/utils.dart';
import 'package:webviewApp/webview_screen.dart';

void main() async {
  //prevent screen recodring and screenshots
  //await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  WidgetsFlutterBinding.ensureInitialized();
  if (haveCameraAccess) {
    if (Platform.isAndroid) {
      await Permission.camera.request();
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WebViewScreen(),
    );
  }
}
