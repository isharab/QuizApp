import 'package:flutter/material.dart';
import 'package:quizz_app/pages/questions_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
