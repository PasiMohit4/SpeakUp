import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

import 'spanish quiz/spanish_quiz1.dart';
import 'spanish quiz/spanish_quiz2.dart';
import 'spanish quiz/spanish_quiz3.dart';
import 'spanish quiz/spanish_quiz4.dart';

class SpanishQuizScreen extends StatefulWidget {
  const SpanishQuizScreen({Key? key}) : super(key: key);

  @override
  State<SpanishQuizScreen> createState() => _SpanishQuizScreenState();
}

class _SpanishQuizScreenState extends State<SpanishQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 70,),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishQuiz1(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 1',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishQuiz2(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 2',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishQuiz3(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 3',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishQuiz4(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Quiz 4',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
