import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC7M95l_t3fHY4m9TcnTp3adKlcUAjAsEE",
            authDomain: "qazbooking-a4hral.firebaseapp.com",
            projectId: "qazbooking-a4hral",
            storageBucket: "qazbooking-a4hral.firebasestorage.app",
            messagingSenderId: "218117951545",
            appId: "1:218117951545:web:cbdbf0996774d3fd377de8"));
  } else {
    await Firebase.initializeApp();
  }
}
