import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class QuizNextButton extends StatelessWidget {
  const QuizNextButton({Key? key, required this.nextQuestion}) : super(key: key);
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: neutral,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: const Text(
          'Next Question',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black,fontSize: 18.0),
        ),
      ),
    );
  }
}
