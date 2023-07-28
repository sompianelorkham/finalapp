import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAebNKQQEu6RXfYLaileqIXacjMt2Dk43I",
            authDomain: "final-19218.firebaseapp.com",
            projectId: "final-19218",
            storageBucket: "final-19218.appspot.com",
            messagingSenderId: "1070224239259",
            appId: "1:1070224239259:web:976f1b4d3f04ea8472343e",
            measurementId: "G-255ZHXDYJJ"));
  } else {
    await Firebase.initializeApp();
  }
}
