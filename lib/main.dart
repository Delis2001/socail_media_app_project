// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:socail_media_app_project/screens/backgroundScreens.dart';
import 'package:socail_media_app_project/screens/counter_screen.dart';
import 'package:socail_media_app_project/screens/show_post_screen.dart';
import 'package:socail_media_app_project/screens/show_user_screen.dart';
import 'package:socail_media_app_project/screens/splass_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Backgroundchanger()
    );
  }
}
