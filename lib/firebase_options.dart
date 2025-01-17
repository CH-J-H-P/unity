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
    apiKey: 'AIzaSyAyOar67O4DLa0EVsPQ-kr4fn1RQAsv9a4',
    appId: '1:432676757976:web:40cdb160001f5b054a92ad',
    messagingSenderId: '432676757976',
    projectId: 'unity-7f470',
    authDomain: 'unity-7f470.firebaseapp.com',
    storageBucket: 'unity-7f470.firebasestorage.app',
    measurementId: 'G-W15E713858',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnho0Kcgc82GEpetzjDWbXByLc1mk_jvc',
    appId: '1:432676757976:android:7eef8dc231c7b9604a92ad',
    messagingSenderId: '432676757976',
    projectId: 'unity-7f470',
    storageBucket: 'unity-7f470.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgwnAb91_YrtTa54rbP9h8Lw5sYuTokHo',
    appId: '1:432676757976:ios:b3bc3300dc5c4a2a4a92ad',
    messagingSenderId: '432676757976',
    projectId: 'unity-7f470',
    storageBucket: 'unity-7f470.firebasestorage.app',
    iosBundleId: 'com.example.unity',
  );
}
