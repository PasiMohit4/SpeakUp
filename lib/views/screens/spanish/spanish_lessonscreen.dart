import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';

import 'spanish lesson/spanish_lesson1.dart';
import 'spanish lesson/spanish_lesson2.dart';

class SpanishLessonScreen extends StatefulWidget {
  const SpanishLessonScreen({Key? key}) : super(key: key);

  @override
  State<SpanishLessonScreen> createState() => _SpanishLessonScreenState();
}

class _SpanishLessonScreenState extends State<SpanishLessonScreen> {
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
                      Radius.circular(20)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson1(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Lesson 1',style: TextStyle(
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
                      Radius.circular(20)
                  )
              ),
              child: InkWell(
                onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishLesson2(),
                ),
                ),
                child: const Center(
                  child: Text(
                    'Lesson 2',style: TextStyle(
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
