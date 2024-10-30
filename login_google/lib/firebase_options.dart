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
    apiKey: 'AIzaSyCSORxP0O5QIHubiITJrRjBtRCVCwcUBLo',
    appId: '1:977985404324:web:967e1dcb99dd2c31cc1531',
    messagingSenderId: '977985404324',
    projectId: 'login-65450',
    authDomain: 'login-65450.firebaseapp.com',
    storageBucket: 'login-65450.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD62Y051ZzfwmtIrF2W56V7TZqO5VIcXMI',
    appId: '1:977985404324:android:9c857936c6a62531cc1531',
    messagingSenderId: '977985404324',
    projectId: 'login-65450',
    storageBucket: 'login-65450.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjkYES5AA1ygSY-pQ5rVA-RvduwDy8Be8',
    appId: '1:977985404324:ios:9f9728886cb03824cc1531',
    messagingSenderId: '977985404324',
    projectId: 'login-65450',
    storageBucket: 'login-65450.appspot.com',
    iosClientId: '977985404324-jedoigncv286u2beapmsb0rl59c6ulik.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginGoogle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjkYES5AA1ygSY-pQ5rVA-RvduwDy8Be8',
    appId: '1:977985404324:ios:9f9728886cb03824cc1531',
    messagingSenderId: '977985404324',
    projectId: 'login-65450',
    storageBucket: 'login-65450.appspot.com',
    iosClientId: '977985404324-jedoigncv286u2beapmsb0rl59c6ulik.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginGoogle',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCSORxP0O5QIHubiITJrRjBtRCVCwcUBLo',
    appId: '1:977985404324:web:6567d19532730d92cc1531',
    messagingSenderId: '977985404324',
    projectId: 'login-65450',
    authDomain: 'login-65450.firebaseapp.com',
    storageBucket: 'login-65450.appspot.com',
  );
}
