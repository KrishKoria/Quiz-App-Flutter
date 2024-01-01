import 'package:flutter/material.dart';
import 'package:quiz_app/custom_answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Question'),
          const SizedBox(height: 20),
          CustomAnswerButton(
            answerText: 'Answer 1',
            onClick: () {},
          ),
          const SizedBox(height: 20),
          CustomAnswerButton(
            answerText: 'Answer 2',
            onClick: () {},
          ),
          const SizedBox(height: 20),
          CustomAnswerButton(
            answerText: 'Answer 3',
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
