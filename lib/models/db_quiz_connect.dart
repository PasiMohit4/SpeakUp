import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:speak_up/models/question_model.dart';

class DBQuizConnect {

  //quiz1 connection
  final spanishquiz1 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz1.json');

  //quiz2 connection
  final spanishquiz2 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz2.json');

  //quiz3 connection
  final spanishquiz3 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz3.json');

  //quiz2 connection
  final spanishquiz4 = Uri.parse(
      'https://speak-up-b7ca3-default-rtdb.firebaseio.com/quiz/spanish/quiz4.json');

  //adding quiz1
  Future<void> addQuestion(Question question) async {
    http.post(spanishquiz1, body: json.encode({
      'title': question.title,
      'options': question.options,
    }));
  }

  //fetching quiz1
  Future<List<Question>> fetchSpanishQuiz1() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(spanishquiz1).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
        );
        // add to newQuestions
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }




  //fetching quiz2
  Future<List<Question>> fetchSpanishQuiz2() async {
    return http.get(spanishquiz2).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }


  //fetching quiz3
  Future<List<Question>> fetchSpanishQuiz3() async {
    return http.get(spanishquiz3).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

  //fetching quiz4
  Future<List<Question>> fetchSpanishQuiz4() async {
    return http.get(spanishquiz4).then((response) {
      var data = json.decode(response.body)as Map<String, dynamic>;
      List<Question> newQuestions =[];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }

}
