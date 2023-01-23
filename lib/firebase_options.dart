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
    apiKey: 'AIzaSyBvDxl84V86ctm2lDEsAT5wvZfYuIfC3UM',
    appId: '1:888686298639:web:98907c0b29cbddfa2c057a',
    messagingSenderId: '888686298639',
    projectId: 'projectuber-b1b85',
    authDomain: 'projectuber-b1b85.firebaseapp.com',
    databaseURL: 'https://projectuber-b1b85-default-rtdb.firebaseio.com',
    storageBucket: 'projectuber-b1b85.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMF7Lr144N3mavqxQIHAAE6krxLqnTsx0',
    appId: '1:888686298639:android:ab41cd5558c3ce7e2c057a',
    messagingSenderId: '888686298639',
    projectId: 'projectuber-b1b85',
    databaseURL: 'https://projectuber-b1b85-default-rtdb.firebaseio.com',
    storageBucket: 'projectuber-b1b85.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAVACVm1ywoUFIBtEQgPOBvjWt3dh49G8',
    appId: '1:888686298639:ios:c71dc54d97f8d3f42c057a',
    messagingSenderId: '888686298639',
    projectId: 'projectuber-b1b85',
    databaseURL: 'https://projectuber-b1b85-default-rtdb.firebaseio.com',
    storageBucket: 'projectuber-b1b85.appspot.com',
    iosClientId: '888686298639-93mrhjmhckq1do715hvb8k0d9qckmiuc.apps.googleusercontent.com',
    iosBundleId: 'com.example.project1',
  );
}
