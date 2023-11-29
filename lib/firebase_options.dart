// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBlL8gLqodr5LTFZ148L64U_w17NdGciH0',
    appId: '1:1060523472681:web:2011942c7836ce61fa2938',
    messagingSenderId: '1060523472681',
    projectId: 'speak-up-b7ca3',
    authDomain: 'speak-up-b7ca3.firebaseapp.com',
    storageBucket: 'speak-up-b7ca3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBMLCGRcKJ5arEdVzPYFWVs5b7OAe4etM',
    appId: '1:1060523472681:android:87e432e1b54b1d3afa2938',
    messagingSenderId: '1060523472681',
    projectId: 'speak-up-b7ca3',
    storageBucket: 'speak-up-b7ca3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAc-aPq3vlJ9kgLh83EkNzrZYpEcLfH4EE',
    appId: '1:1060523472681:ios:a80a180356b3fa08fa2938',
    messagingSenderId: '1060523472681',
    projectId: 'speak-up-b7ca3',
    storageBucket: 'speak-up-b7ca3.appspot.com',
    iosBundleId: 'com.example.speakUp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAc-aPq3vlJ9kgLh83EkNzrZYpEcLfH4EE',
    appId: '1:1060523472681:ios:e02a5a1119e78472fa2938',
    messagingSenderId: '1060523472681',
    projectId: 'speak-up-b7ca3',
    storageBucket: 'speak-up-b7ca3.appspot.com',
    iosBundleId: 'com.example.speakUp.RunnerTests',
  );
}