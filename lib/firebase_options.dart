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
    apiKey: 'AIzaSyDa9HeACFhBEnk3LadxoXP4nZQGyzZKPZA',
    appId: '1:576235553668:web:bbf9089f5fac40de2313d1',
    messagingSenderId: '576235553668',
    projectId: 'crypto-app-ce8c6',
    authDomain: 'crypto-app-ce8c6.firebaseapp.com',
    storageBucket: 'crypto-app-ce8c6.firebasestorage.app',
    measurementId: 'G-Y84LY5WCH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB407dwdWKOHtFbvfUyTfeeUzOUKNNSzg4',
    appId: '1:576235553668:android:44383e15c9c40edb2313d1',
    messagingSenderId: '576235553668',
    projectId: 'crypto-app-ce8c6',
    storageBucket: 'crypto-app-ce8c6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBu0Uc4akYtJaqjEdxEjUinDP8lWU744Ww',
    appId: '1:576235553668:ios:48f3e4c41f8dfaf52313d1',
    messagingSenderId: '576235553668',
    projectId: 'crypto-app-ce8c6',
    storageBucket: 'crypto-app-ce8c6.firebasestorage.app',
    iosBundleId: 'com.example.cryptoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBu0Uc4akYtJaqjEdxEjUinDP8lWU744Ww',
    appId: '1:576235553668:ios:48f3e4c41f8dfaf52313d1',
    messagingSenderId: '576235553668',
    projectId: 'crypto-app-ce8c6',
    storageBucket: 'crypto-app-ce8c6.firebasestorage.app',
    iosBundleId: 'com.example.cryptoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDa9HeACFhBEnk3LadxoXP4nZQGyzZKPZA',
    appId: '1:576235553668:web:ed2752dfdb9969552313d1',
    messagingSenderId: '576235553668',
    projectId: 'crypto-app-ce8c6',
    authDomain: 'crypto-app-ce8c6.firebaseapp.com',
    storageBucket: 'crypto-app-ce8c6.firebasestorage.app',
    measurementId: 'G-XGTS2PLXJB',
  );
}
