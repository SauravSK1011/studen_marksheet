import 'package:flutter/material.dart';
import 'package:studen_marksheet/analysis.dart';
import 'package:studen_marksheet/home.dart';
import 'package:studen_marksheet/home_page.dart';
import 'package:studen_marksheet/imgpick.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Marksheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
   
      home: Home(),
    );
  }
}
