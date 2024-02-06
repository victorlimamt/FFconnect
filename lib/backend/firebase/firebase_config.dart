import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDuEAszXqA4EM8RS3uqi9YvLK0cng6UelQ",
            authDomain: "concretizze-3e05e.firebaseapp.com",
            projectId: "concretizze-3e05e",
            storageBucket: "concretizze-3e05e.appspot.com",
            messagingSenderId: "343972063309",
            appId: "1:343972063309:web:0a5c64c53e0bc92994d404"));
  } else {
    await Firebase.initializeApp();
  }
}
