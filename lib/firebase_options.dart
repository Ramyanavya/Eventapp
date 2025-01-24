// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyCUu6_q6jGCjHXL3tIndHigFkqk24nrfjs',
    appId: '1:890262080488:web:88a1c05af5ff99f16ab25d',
    messagingSenderId: '890262080488',
    projectId: 'eventapp-b4bae',
    authDomain: 'eventapp-b4bae.firebaseapp.com',
    storageBucket: 'eventapp-b4bae.appspot.com',
    measurementId: 'G-7FH3SQHCK9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCx2Z8Xj8FjeCMwMYa8oprApSMjcJW2vUc',
    appId: '1:890262080488:android:c01eb6052757da5b6ab25d',
    messagingSenderId: '890262080488',
    projectId: 'eventapp-b4bae',
    storageBucket: 'eventapp-b4bae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATAvYBmJyUmoc1mc7PBQ10-um08_lLZqM',
    appId: '1:890262080488:ios:90f680526226eedd6ab25d',
    messagingSenderId: '890262080488',
    projectId: 'eventapp-b4bae',
    storageBucket: 'eventapp-b4bae.appspot.com',
    iosBundleId: 'com.example.eventDart',
  );

}