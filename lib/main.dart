import 'package:flutter/material.dart';
import 'package:landry_helpli/components/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'うんち',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Layout(title: "unchi"),
    );
  }
}
