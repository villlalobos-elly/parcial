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
    apiKey: 'AIzaSyBS5a-Lv2zVsz80RdwYEOUdPXCXXCqLyK4',
    appId: '1:974100697808:web:d99a523bb27fc7242a04d5',
    messagingSenderId: '974100697808',
    projectId: 'flutterbd-e97ff',
    authDomain: 'flutterbd-e97ff.firebaseapp.com',
    storageBucket: 'flutterbd-e97ff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeIcjNYR3S9btFSzCYKy9sXnfIdceTA4k',
    appId: '1:974100697808:android:9a3c9833102528362a04d5',
    messagingSenderId: '974100697808',
    projectId: 'flutterbd-e97ff',
    storageBucket: 'flutterbd-e97ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0jaPmKvAxGX9SfaDZPxT4Ia41yiuMOYI',
    appId: '1:974100697808:ios:5d15af8a1070bbf12a04d5',
    messagingSenderId: '974100697808',
    projectId: 'flutterbd-e97ff',
    storageBucket: 'flutterbd-e97ff.appspot.com',
    iosClientId: '974100697808-9cvv3s4cvnlmljau3n81l96tirhf959j.apps.googleusercontent.com',
    iosBundleId: 'flutterutec.edu.sv.flutterFirebaseapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0jaPmKvAxGX9SfaDZPxT4Ia41yiuMOYI',
    appId: '1:974100697808:ios:5d15af8a1070bbf12a04d5',
    messagingSenderId: '974100697808',
    projectId: 'flutterbd-e97ff',
    storageBucket: 'flutterbd-e97ff.appspot.com',
    iosClientId: '974100697808-9cvv3s4cvnlmljau3n81l96tirhf959j.apps.googleusercontent.com',
    iosBundleId: 'flutterutec.edu.sv.flutterFirebaseapp',
  );
}
