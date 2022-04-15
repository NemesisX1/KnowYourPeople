import 'package:codemagic_demo_app/views/home/home.view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codemagic Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white24,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
