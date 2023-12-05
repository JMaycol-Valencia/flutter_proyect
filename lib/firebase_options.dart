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
    apiKey: 'AIzaSyCmtB6RfHnYYBA_8kZAg0qrjJrRlW1MkaM',
    appId: '1:1013829702346:web:607483a5872898bf639a33',
    messagingSenderId: '1013829702346',
    projectId: 'aniwiki-86e9c',
    authDomain: 'aniwiki-86e9c.firebaseapp.com',
    storageBucket: 'aniwiki-86e9c.appspot.com',
    measurementId: 'G-D2DL7HWZ8T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWnNmnzreDnyij-jyEIGIE9ESMzlrh2dQ',
    appId: '1:1013829702346:android:4313fd0ad9b816f7639a33',
    messagingSenderId: '1013829702346',
    projectId: 'aniwiki-86e9c',
    storageBucket: 'aniwiki-86e9c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDm9o_CuXB3GcfXaUe24QrtWTKnpoklG28',
    appId: '1:1013829702346:ios:a33f74be98d12ce0639a33',
    messagingSenderId: '1013829702346',
    projectId: 'aniwiki-86e9c',
    storageBucket: 'aniwiki-86e9c.appspot.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDm9o_CuXB3GcfXaUe24QrtWTKnpoklG28',
    appId: '1:1013829702346:ios:20898e0ed8f356a2639a33',
    messagingSenderId: '1013829702346',
    projectId: 'aniwiki-86e9c',
    storageBucket: 'aniwiki-86e9c.appspot.com',
    iosBundleId: 'com.example.myApp.RunnerTests',
  );
}
