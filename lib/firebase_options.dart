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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDox20Te8NM-hpJ5lZNVyHfOZ1TpP5JyXk',
    appId: '1:287013735965:web:d36c119d21e1b45fc3c0f4',
    messagingSenderId: '287013735965',
    projectId: 'news-app-17996',
    authDomain: 'news-app-17996.firebaseapp.com',
    storageBucket: 'news-app-17996.appspot.com',
    measurementId: 'G-B45BCYSYWQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBveHXY0jtPPCWAQ5Dlkkl056WLeAQsp4E',
    appId: '1:287013735965:android:b4e1a5ca26b4ed2ec3c0f4',
    messagingSenderId: '287013735965',
    projectId: 'news-app-17996',
    storageBucket: 'news-app-17996.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVp4W-2dA31zOn0gU8NFT48vO1BCrGdtw',
    appId: '1:287013735965:ios:9979c392e3bedfb3c3c0f4',
    messagingSenderId: '287013735965',
    projectId: 'news-app-17996',
    storageBucket: 'news-app-17996.appspot.com',
    iosBundleId: 'com.example.newapp',
  );
}
