import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/models/db_quiz_connect.dart';
import 'package:speak_up/models/question_model.dart';
import 'package:speak_up/views/widgets/option_card.dart';
import 'package:speak_up/views/widgets/question_widget.dart';
import 'package:speak_up/views/widgets/quiz_next_button.dart';
import 'package:speak_up/views/widgets/result_box.dart';

class SpanishQuiz1 extends StatefulWidget {
  const SpanishQuiz1({Key? key}) : super(key: key);

  @override
  State<SpanishQuiz1> createState() => _SpanishQuiz1State();
}

class _SpanishQuiz1State extends State<SpanishQuiz1> {

  List<Question> _questions = [];

  int index = 0;
  int score = 0;

  bool isPressed = false;
  bool isAlreadySelected = false;

  void nextQuestion() {
    if (index == _questions.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
                result: score,
                questionLength: _questions.length,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select any options'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Quiz 1'),
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Score : $score',
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestions: _questions.length,
            ),
            const Divider(color: neutral),
            const SizedBox(
              height: 25.0,
            ),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                    _questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : neutral,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: QuizNextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
