import 'package:flutter/material.dart';

void main() {
  runApp(const HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter Project'),
        ),
        body: const Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}