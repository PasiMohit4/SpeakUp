import 'package:flutter/material.dart';

class SpanishLessonScreen extends StatefulWidget {
  const SpanishLessonScreen({Key? key}) : super(key: key);

  @override
  State<SpanishLessonScreen> createState() => _SpanishLessonScreenState();
}

class _SpanishLessonScreenState extends State<SpanishLessonScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Lesson screen')),
    );
  }
}
