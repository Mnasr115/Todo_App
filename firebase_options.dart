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
    apiKey: 'AIzaSyA3Ax3GXitz6dARrmySiGXOPYZMF26-3R0',
    appId: '1:919501429809:web:aa1d1f3f1fde9bdce70910',
    messagingSenderId: '919501429809',
    projectId: 'chat-app-1c634',
    authDomain: 'chat-app-1c634.firebaseapp.com',
    storageBucket: 'chat-app-1c634.appspot.com',
    measurementId: 'G-8XDVMHSP51',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDU9E7cApf1WQPa_hvjZ0rzhCcfCfFUsxg',
    appId: '1:919501429809:android:9338acabb7433961e70910',
    messagingSenderId: '919501429809',
    projectId: 'chat-app-1c634',
    storageBucket: 'chat-app-1c634.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtaSVedAprOz_pBzH1xS59FyJ0H6QjbUs',
    appId: '1:919501429809:ios:9796155cd1327af8e70910',
    messagingSenderId: '919501429809',
    projectId: 'chat-app-1c634',
    storageBucket: 'chat-app-1c634.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtaSVedAprOz_pBzH1xS59FyJ0H6QjbUs',
    appId: '1:919501429809:ios:66582eda26ec8c89e70910',
    messagingSenderId: '919501429809',
    projectId: 'chat-app-1c634',
    storageBucket: 'chat-app-1c634.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
