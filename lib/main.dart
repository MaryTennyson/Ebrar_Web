import 'package:ebrarswebsite/common/screens/home/home_view.dart';
import 'package:ebrarswebsite/common/ui/theme_manager.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.createTheme(),
      home: HomeView(),
    );
  }
}
