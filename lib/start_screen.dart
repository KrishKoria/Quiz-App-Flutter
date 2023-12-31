import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          const SizedBox(height: 40),
          const Text(
            "Learn Flutter in a fun way!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 20),
          TextButton(
            child: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
