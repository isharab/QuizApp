import 'package:flutter/material.dart';

import 'pages/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hello, world!',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 10, 185, 216),
                Color.fromARGB(255, 10, 207, 108),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
