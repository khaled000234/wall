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
    apiKey: 'AIzaSyDarTJGBLb7zBU0UMI449aHxdIRbUzR5i8',
    appId: '1:420708588564:web:7638a2b491962ec3a9db01',
    messagingSenderId: '420708588564',
    projectId: 'wallp-6aff9',
    authDomain: 'wallp-6aff9.firebaseapp.com',
    storageBucket: 'wallp-6aff9.appspot.com',
    measurementId: 'G-K9BT6TFTKX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDWQcRJL5jXuZSla_0ledIogYFTlB8GGQ',
    appId: '1:420708588564:android:48d2a6edabeb89baa9db01',
    messagingSenderId: '420708588564',
    projectId: 'wallp-6aff9',
    storageBucket: 'wallp-6aff9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHcZUPRPn7CPjFR0CiYWzNBiwneuqqHjE',
    appId: '1:420708588564:ios:e8fa74b92c5384dca9db01',
    messagingSenderId: '420708588564',
    projectId: 'wallp-6aff9',
    storageBucket: 'wallp-6aff9.appspot.com',
    iosBundleId: 'com.example.fire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHcZUPRPn7CPjFR0CiYWzNBiwneuqqHjE',
    appId: '1:420708588564:ios:b8d53cbee509272ea9db01',
    messagingSenderId: '420708588564',
    projectId: 'wallp-6aff9',
    storageBucket: 'wallp-6aff9.appspot.com',
    iosBundleId: 'com.example.fire.RunnerTests',
  );
}
