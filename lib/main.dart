import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'homePage.dart';
import 'recycle.dart';
import 'reward.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        body: LoginPage(),
      ),
    );
  }
}
