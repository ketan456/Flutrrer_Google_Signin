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
    apiKey: 'AIzaSyA8BYfTuAeqQhfaWkk7nzfGoexlv3Wh39w',
    appId: '1:532485141254:web:3c8d6197aac6f9a7326487',
    messagingSenderId: '532485141254',
    projectId: 'fluttersignin-377207',
    authDomain: 'fluttersignin-377207.firebaseapp.com',
    storageBucket: 'fluttersignin-377207.appspot.com',
    measurementId: 'G-YWDNSR1P0E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApOpc8zbn1LeTao-GPJGCX_Xf3hbV0Y70',
    appId: '1:532485141254:android:8694dc0cd98ce877326487',
    messagingSenderId: '532485141254',
    projectId: 'fluttersignin-377207',
    storageBucket: 'fluttersignin-377207.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCaoABabJTB7sNMoMu4TdpQ-eBAS_JGPEU',
    appId: '1:532485141254:ios:3e4a3d47e4e815fc326487',
    messagingSenderId: '532485141254',
    projectId: 'fluttersignin-377207',
    storageBucket: 'fluttersignin-377207.appspot.com',
    androidClientId: '532485141254-6o0m5lc75rn7tkp5rtgqtfe0u726vtrh.apps.googleusercontent.com',
    iosClientId: '532485141254-pfumi4ele1t7bhq0ogcee4rhq44umkp2.apps.googleusercontent.com',
    iosBundleId: 'net.ketan.fluttersignin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCaoABabJTB7sNMoMu4TdpQ-eBAS_JGPEU',
    appId: '1:532485141254:ios:3e4a3d47e4e815fc326487',
    messagingSenderId: '532485141254',
    projectId: 'fluttersignin-377207',
    storageBucket: 'fluttersignin-377207.appspot.com',
    androidClientId: '532485141254-6o0m5lc75rn7tkp5rtgqtfe0u726vtrh.apps.googleusercontent.com',
    iosClientId: '532485141254-pfumi4ele1t7bhq0ogcee4rhq44umkp2.apps.googleusercontent.com',
    iosBundleId: 'net.ketan.fluttersignin',
  );
}