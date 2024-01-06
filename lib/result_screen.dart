import 'package:flutter/material.dart';
import 'package:quiz_app/datas/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.choosenAnswers,
    required this.onRestard,
    });

  final List<String> choosenAnswers;
  final void Function() onRestard;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosenAnswers[i]
        },
      );
    }
  }

  @override
  Widget build(context) {

    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answered X out of Y question corectly !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ), 
            ), 
            const SizedBox(
              height: 30,
            ),
            const Text(
              'list of Answer and Question',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ), 
            ), 
            const SizedBox(
              height: 30,
            ), 
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestard,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
