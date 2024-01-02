import 'package:flutter/material.dart';
import 'package:quiz_app/result/result_item.dart';

class Result extends StatelessWidget {
  const Result(this.answerData, {super.key});

  final List<Map<String, Object>> answerData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: answerData.map((answer) {
            return ResultItem(answer);
          }).toList(),
        ),
      ),
    );
  }
}
