import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/custom_answer_button.dart';
import 'package:quiz_app/data/questions_list.dart';

class Questions extends StatefulWidget {
  const Questions(this.chosenAnswer, {super.key});
  final void Function(String answer) chosenAnswer;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  void answeredQuestion(String selectedAnswer) {
    widget.chosenAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 201, 153, 251),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getshuffledAnswer().map(
              (answer) {
                return CustomAnswerButton(
                  answerText: answer,
                  onClick: () => answeredQuestion(answer),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
