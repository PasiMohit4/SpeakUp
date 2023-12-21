import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

class QuizNextButton extends StatelessWidget {
  const QuizNextButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
