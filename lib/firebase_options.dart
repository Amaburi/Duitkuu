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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDIMYkQgaNbdJT1HsxSp3RS2LPgtdJ1x28',
    appId: '1:639722160140:web:e486e015c68e4e999bae29',
    messagingSenderId: '639722160140',
    projectId: 'duitkuauth',
    authDomain: 'duitkuauth.firebaseapp.com',
    storageBucket: 'duitkuauth.appspot.com',
    measurementId: 'G-J7Y7WCCB7T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwXAz58cHv1ftJsxPsh6CBzlOkz5zlx8k',
    appId: '1:639722160140:android:3c33faa9cf0fd2959bae29',
    messagingSenderId: '639722160140',
    projectId: 'duitkuauth',
    storageBucket: 'duitkuauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfw7SQwJV7YaenceAyIYIy_tj8SoZxQMk',
    appId: '1:639722160140:ios:9f8397cbfa4845569bae29',
    messagingSenderId: '639722160140',
    projectId: 'duitkuauth',
    storageBucket: 'duitkuauth.appspot.com',
    iosClientId: '639722160140-f9q1am9rtidd46emsegtagrnqefsa0ro.apps.googleusercontent.com',
    iosBundleId: 'com.example.duitkuproto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfw7SQwJV7YaenceAyIYIy_tj8SoZxQMk',
    appId: '1:639722160140:ios:9f8397cbfa4845569bae29',
    messagingSenderId: '639722160140',
    projectId: 'duitkuauth',
    storageBucket: 'duitkuauth.appspot.com',
    iosClientId: '639722160140-f9q1am9rtidd46emsegtagrnqefsa0ro.apps.googleusercontent.com',
    iosBundleId: 'com.example.duitkuproto',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDIMYkQgaNbdJT1HsxSp3RS2LPgtdJ1x28',
    appId: '1:639722160140:web:d0e047271f72c6b99bae29',
    messagingSenderId: '639722160140',
    projectId: 'duitkuauth',
    authDomain: 'duitkuauth.firebaseapp.com',
    storageBucket: 'duitkuauth.appspot.com',
    measurementId: 'G-02HRL62BKQ',
  );
}
