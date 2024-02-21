import 'package:f_project/pages/fourth_page.dart';
import 'package:f_project/pages/home_page.dart';
import 'package:f_project/pages/second_page.dart';
import 'package:f_project/pages/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
        ThirdPage.id: (context) => const ThirdPage(),
        FourthPage.id: (context) => const FourthPage(),
      },
    );
  }
}
