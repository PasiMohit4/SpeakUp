import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/controllers/auth_controller.dart';
import 'package:speak_up/firebase_options.dart';
import 'package:speak_up/models/db_quiz_connect.dart';
import 'package:speak_up/models/question_model.dart';
import 'package:speak_up/views/screens/auths/login_screen.dart';
import 'package:speak_up/views/screens/auths/signup_screen.dart';
import 'package:speak_up/views/screens/selecting_screen.dart';
import 'package:speak_up/views/screens/spanish/spanish_homescreen.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SpeakUp',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: SelectingScreen());
  }
}
