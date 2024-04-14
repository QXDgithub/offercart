import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBajO8QoMGfNEFBP27X5ltZGEPhZ-8EeEU",
            authDomain: "offercartdb-46336.firebaseapp.com",
            projectId: "offercartdb-46336",
            storageBucket: "offercartdb-46336.appspot.com",
            messagingSenderId: "1058899771022",
            appId: "1:1058899771022:web:52cf0156d3c1e7f1c893df",
            measurementId: "G-TXQN1LKKF8"));
  } else {
    await Firebase.initializeApp();
  }
}
