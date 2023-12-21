

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/controllers/auth_controller.dart';
import 'package:speak_up/views/screens/profile_screen.dart';
import 'package:speak_up/views/screens/spanish/spanish_homescreen.dart';
import 'package:speak_up/views/screens/spanish/spanish_lessonscreen.dart';

import 'views/screens/spanish/spanish_quizscreen.dart';

//navigation
var spanish = [
  SpanishLessonScreen(),
  SpanishQuizScreen(),
  ProfileScreen(uid: authController.user.uid),

];

//color
const backgroundColor = Color.fromARGB(255, 31, 26, 48);
var buttonColor =  const Color.fromARGB(255, 13, 245, 228);
const borderColor = Colors.grey;

// Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;



var authController = AuthController.instance;



//Quiz Color
const Color correct = Color(0xFF32AB58);
const Color incorrect = Color(0xFFAB3232);
const Color neutral = Color(0xFFE7E7E7);

//font
var font = GoogleFonts.acme();

