import 'package:flutter/material.dart';

class CustomAnswerButton extends StatelessWidget {
  const CustomAnswerButton(
      {super.key, required this.answerText, required this.onClick});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 64, 7, 138),
        foregroundColor: const Color.fromARGB(255, 238, 215, 253),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(answerText),
    );
  }
}
