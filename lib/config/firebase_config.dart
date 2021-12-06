import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

// vapidKey: "BKk8oaVAF5qiy6QJJRXwclmd3X9J-jz9U3aaaez-yQ3fOb6NrlP-DftkD7uNqggAgir1_YyG8UiT7Mq4khhcIEk",
// firebase: {
// apiKey: "",
// authDomain: "",
// databaseURL: "",
// projectId: "",
// storageBucket: "",
// messagingSenderId: "",
// appId: "",
// },

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
        apiKey: 'AIzaSyBfHYZ9qNctSKx-jI6OIbPZEFYysbJ_gcY',
        appId: '1:1049768546446:web:0c74e1ce14716094e9f9df',
        messagingSenderId: '1049768546446',
        projectId: 'diario-12a43',
        authDomain: 'diario-12a43.firebaseapp.com',
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        apiKey: 'AIzaSyBfHYZ9qNctSKx-jI6OIbPZEFYysbJ_gcY',
        appId: '1:1049768546446:web:0c74e1ce14716094e9f9df',
        messagingSenderId: '1049768546446',
        projectId: 'diario-12a43',
        authDomain: 'diario-12a43.firebaseapp.com',
        // iosBundleId: 'io.flutter.plugins.firebase.auth',
        databaseURL: 'https://diario-12a43-default-rtdb.firebaseio.com',
        // iosClientId:
        // '448618578101-m53gtqfnqipj12pts10590l37npccd2r.apps.googleusercontent.com',
        // androidClientId:
        // '448618578101-26jgjs0rtl4ts2i667vjb28kldvs2kp6.apps.googleusercontent.com',
        storageBucket: 'diario-12a43.appspot.com',
      );
    } else {
      // Android
      return const FirebaseOptions(
        apiKey: 'AIzaSyBfHYZ9qNctSKx-jI6OIbPZEFYysbJ_gcY',
        appId: '1:1049768546446:web:0c74e1ce14716094e9f9df',
        messagingSenderId: '1049768546446',
        projectId: 'diario-12a43',
        authDomain: 'diario-12a43.firebaseapp.com',
        databaseURL: 'https://diario-12a43-default-rtdb.firebaseio.com',
        // androidClientId:
        // '448618578101-qd7qb4i251kmq2ju79bl7sif96si0ve3.apps.googleusercontent.com',
      );
    }
  }
}