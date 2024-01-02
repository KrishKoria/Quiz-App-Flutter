import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/result/result.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.onRestart, {super.key});
  final List<String> selectedAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get answerData {
    final List<Map<String, Object>> answerData = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      answerData.add({
        'index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answer[0],
        'selected_answer': selectedAnswers[i],
      });
    }
    return answerData;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final correctAnswers = answerData
        .where(
          (answer) => answer['correct_answer'] == answer['selected_answer'],
        )
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctAnswers / $totalQuestions questions correctly!",
              style: GoogleFonts.roboto(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Result(answerData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Restart Quiz!"),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
