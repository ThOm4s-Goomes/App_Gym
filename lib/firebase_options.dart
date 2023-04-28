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
    apiKey: 'AIzaSyBplju3s4J6ebO78ONrq2N_We5_VJ5aDIo',
    appId: '1:564875431497:web:f9f32015617db909937998',
    messagingSenderId: '564875431497',
    projectId: 'gym-database-stage-f710b',
    authDomain: 'gym-database-stage-f710b.firebaseapp.com',
    storageBucket: 'gym-database-stage-f710b.appspot.com',
    measurementId: 'G-G1RSLYRD6D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvg6H9QC6dvht9V3BeD_KkiB6seq7a6S0',
    appId: '1:564875431497:android:1ff1ec764393d58b937998',
    messagingSenderId: '564875431497',
    projectId: 'gym-database-stage-f710b',
    storageBucket: 'gym-database-stage-f710b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDw27aBFNWERqPcVbrE3SDk5h3y5wk91kI',
    appId: '1:564875431497:ios:aaa347e6a0609330937998',
    messagingSenderId: '564875431497',
    projectId: 'gym-database-stage-f710b',
    storageBucket: 'gym-database-stage-f710b.appspot.com',
    iosClientId: '564875431497-fkncgs3q808kc4mp5duv07mudpfuo9bk.apps.googleusercontent.com',
    iosBundleId: 'com.example.appGym',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDw27aBFNWERqPcVbrE3SDk5h3y5wk91kI',
    appId: '1:564875431497:ios:aaa347e6a0609330937998',
    messagingSenderId: '564875431497',
    projectId: 'gym-database-stage-f710b',
    storageBucket: 'gym-database-stage-f710b.appspot.com',
    iosClientId: '564875431497-fkncgs3q808kc4mp5duv07mudpfuo9bk.apps.googleusercontent.com',
    iosBundleId: 'com.example.appGym',
  );
}